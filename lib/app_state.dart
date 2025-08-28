import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedSport = prefs.getString('ff_selectedSport') ?? _selectedSport;
    });
    _safeInit(() {
      _publicbettingfilter =
          prefs.getString('ff_publicbettingfilter') ?? _publicbettingfilter;
    });
    _safeInit(() {
      _selectedTeam = prefs.getString('ff_selectedTeam') ?? _selectedTeam;
    });
    _safeInit(() {
      final _selectedDateString = prefs.getString('ff_selectedDate');
      if (_selectedDateString != null && _selectedDateString.isNotEmpty) {
        _selectedDate = DateTime.tryParse(_selectedDateString);
      }
    });
    _safeInit(() {
      _searchText = prefs.getString('ff_searchText') ?? _searchText;
    });
    _safeInit(() {
      _marketType = prefs.getString('ff_marketType') ?? _marketType;
    });
    _safeInit(() {
      _minConfidence = prefs.getDouble('ff_minConfidence') ?? _minConfidence;
    });
    _safeInit(() {
      _page = prefs.getInt('ff_page') ?? _page;
    });
    _safeInit(() {
      _pageSize = prefs.getInt('ff_pageSize') ?? _pageSize;
    });
    _safeInit(() {
      _isFiltersOpen = prefs.getBool('ff_isFiltersOpen') ?? _isFiltersOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// continue showing the initial selected sport
  String _selectedSport = 'MLB';
  String get selectedSport => _selectedSport;
  set selectedSport(String value) {
    _selectedSport = value;
    prefs.setString('ff_selectedSport', value);
  }

  String _publicbettingfilter = 'Sharp';
  String get publicbettingfilter => _publicbettingfilter;
  set publicbettingfilter(String value) {
    _publicbettingfilter = value;
    prefs.setString('ff_publicbettingfilter', value);
  }

  // College Football page state
  String? _selectedTeam;
  String? get selectedTeam => _selectedTeam;
  set selectedTeam(String? value) {
    _selectedTeam = value;
    if (value == null) {
      prefs.remove('ff_selectedTeam');
    } else {
      prefs.setString('ff_selectedTeam', value);
    }
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
    if (value == null) {
      prefs.remove('ff_selectedDate');
    } else {
      prefs.setString('ff_selectedDate', value.toIso8601String());
    }
  }

  String _searchText = '';
  String get searchText => _searchText;
  set searchText(String value) {
    _searchText = value;
    prefs.setString('ff_searchText', value);
  }

  String _marketType = 'spread';
  String get marketType => _marketType;
  set marketType(String value) {
    _marketType = value;
    prefs.setString('ff_marketType', value);
  }

  double _minConfidence = 0.0;
  double get minConfidence => _minConfidence;
  set minConfidence(double value) {
    _minConfidence = value;
    prefs.setDouble('ff_minConfidence', value);
  }

  int _page = 0;
  int get page => _page;
  set page(int value) {
    _page = value;
    prefs.setInt('ff_page', value);
  }

  int _pageSize = 25;
  int get pageSize => _pageSize;
  set pageSize(int value) {
    _pageSize = value;
    prefs.setInt('ff_pageSize', value);
  }

  bool _isFiltersOpen = true;
  bool get isFiltersOpen => _isFiltersOpen;
  set isFiltersOpen(bool value) {
    _isFiltersOpen = value;
    prefs.setBool('ff_isFiltersOpen', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
