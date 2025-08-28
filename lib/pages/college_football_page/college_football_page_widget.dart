import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_state.dart';
import '../../services/cfb_service.dart';
import '../../backend/api_requests/api_calls.dart';

class CollegeFootballPageWidget extends StatefulWidget {
  const CollegeFootballPageWidget({super.key});

  @override
  State<CollegeFootballPageWidget> createState() => _CollegeFootballPageWidgetState();
}

class _CollegeFootballPageWidgetState extends State<CollegeFootballPageWidget> {
  final FFAppState _state = FFAppState();
  late final CfbService _service;
  final TextEditingController _teamController = TextEditingController();
  final ValueNotifier<bool> _loading = ValueNotifier(false);
  ApiCallResponse? _lastResponse;

  @override
  void initState() {
    super.initState();
    _service = CfbService(appState: _state);
    _teamController.text = _state.selectedTeam ?? '';
    WidgetsBinding.instance.addPostFrameCallback((_) => _refresh());
  }

  @override
  void dispose() {
    _teamController.dispose();
    _loading.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    _loading.value = true;
    try {
      final resp = await _service.fetchPredictions();
      setState(() {
        _lastResponse = resp;
      });
    } finally {
      _loading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'College Football',
          style: GoogleFonts.inter(),
        ),
      ),
      body: Column(
        children: [
          _buildFilters(context),
          const Divider(height: 1),
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: _loading,
              builder: (context, isLoading, _) {
                if (isLoading && _lastResponse == null) {
                  return const Center(child: CircularProgressIndicator());
                }
                final data = _parseItems(_lastResponse);
                if (data.isEmpty) {
                  return const Center(child: Text('No results'));
                }
                return RefreshIndicator(
                  onRefresh: _refresh,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(12),
                    itemCount: data.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final item = data[index] as Map<String, dynamic>;
                      final home = (item['home_team'] ?? '') as String;
                      final away = (item['away_team'] ?? '') as String;
                      final kickoff = (item['kickoff_time'] ?? '') as String;
                      final pick = (item['model_pick'] ?? '') as String;
                      final conf = (item['confidence'] ?? 0).toString();
                      return Card(
                        child: ListTile(
                          title: Text('$away @ $home'),
                          subtitle: Text('Kickoff: $kickoff\nPick: $pick  Conf: $conf'),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          _buildPager(context),
        ],
      ),
    );
  }

  Widget _buildFilters(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _teamController,
                  decoration: const InputDecoration(
                    labelText: 'Team',
                    hintText: 'Search team',
                  ),
                  onSubmitted: (_) => _applyFilters(),
                ),
              ),
              const SizedBox(width: 12),
              DropdownButton<String>(
                value: _state.marketType,
                items: const [
                  DropdownMenuItem(value: 'spread', child: Text('Spread')),
                  DropdownMenuItem(value: 'total', child: Text('Total')),
                  DropdownMenuItem(value: 'moneyline', child: Text('Moneyline')),
                ],
                onChanged: (val) {
                  if (val == null) return;
                  _state.update(() {
                    _state.marketType = val;
                    _state.page = 0;
                  });
                  _refresh();
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Min Confidence: ${_state.minConfidence.toStringAsFixed(2)}'),
                    Slider(
                      min: 0,
                      max: 1,
                      divisions: 100,
                      value: _state.minConfidence.clamp(0, 1),
                      onChanged: (v) => setState(() => _state.minConfidence = v),
                      onChangeEnd: (_) {
                        _state.update(() {
                          _state.page = 0;
                        });
                        _refresh();
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              OutlinedButton(
                onPressed: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: _state.selectedDate ?? DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2100),
                  );
                  _state.update(() {
                    _state.selectedDate = picked;
                    _state.page = 0;
                  });
                  _refresh();
                },
                child: Text(
                  _state.selectedDate == null
                      ? 'Select Date'
                      : _state.selectedDate!.toIso8601String().split('T').first,
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: _applyFilters,
                child: const Text('Apply Filters'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPager(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: _state.page > 0
                ? () {
                    _state.update(() => _state.page = _state.page - 1);
                    _refresh();
                  }
                : null,
            child: const Text('Previous'),
          ),
          Text('Page ${_state.page + 1}'),
          OutlinedButton(
            onPressed: () {
              _state.update(() => _state.page = _state.page + 1);
              _refresh();
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }

  void _applyFilters() {
    _state.update(() {
      final t = _teamController.text.trim();
      _state.selectedTeam = t.isEmpty ? null : t;
      _state.page = 0;
    });
    _refresh();
  }

  List _parseItems(ApiCallResponse? resp) {
    if (resp == null || resp.jsonBody == null) return const [];
    final body = resp.jsonBody;
    if (body is List) return body;
    if (body is Map && body['data'] is List) return body['data'] as List;
    return const [];
  }
}


