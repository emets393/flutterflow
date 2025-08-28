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
