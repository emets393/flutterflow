import 'package:flutter/material.dart';
import '../app_state.dart';
import '../backend/api_requests/api_calls.dart';

class CfbService {
  CfbService({FFAppState? appState}) : _appState = appState ?? FFAppState();

  final FFAppState _appState;

  Future<ApiCallResponse> fetchPredictions({
    String? overrideTeam,
    String? overrideMarketType,
    double? overrideMinConfidence,
    DateTime? overrideDate,
    int? overrideLimit,
    int? overrideOffset,
  }) async {
    final String? team = overrideTeam ?? _appState.selectedTeam;
    final String marketType = overrideMarketType ?? _appState.marketType;
    final double minConfidence = overrideMinConfidence ?? _appState.minConfidence;
    final DateTime? selectedDate = overrideDate ?? _appState.selectedDate;
    final int limit = overrideLimit ?? _appState.pageSize;
    final int offset = overrideOffset ?? (_appState.page * _appState.pageSize);

    final String? onDate = selectedDate != null
        ? DateTime(selectedDate.year, selectedDate.month, selectedDate.day)
            .toIso8601String()
            .split('T')
            .first
        : null;

    return GetCFBPredictionsLatestCall.call(
      team: team,
      marketType: marketType,
      minConfidence: minConfidence,
      onDate: onDate,
      limit: limit,
      offset: offset,
    );
  }
}


