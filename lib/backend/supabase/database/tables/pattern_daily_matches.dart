import '../database.dart';

class PatternDailyMatchesTable extends SupabaseTable<PatternDailyMatchesRow> {
  @override
  String get tableName => 'pattern_daily_matches';

  @override
  PatternDailyMatchesRow createRow(Map<String, dynamic> data) =>
      PatternDailyMatchesRow(data);
}

class PatternDailyMatchesRow extends SupabaseDataRow {
  PatternDailyMatchesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PatternDailyMatchesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get savedPatternId => getField<String>('saved_pattern_id');
  set savedPatternId(String? value) =>
      setField<String>('saved_pattern_id', value);

  DateTime get matchDate => getField<DateTime>('match_date')!;
  set matchDate(DateTime value) => setField<DateTime>('match_date', value);

  String get uniqueId => getField<String>('unique_id')!;
  set uniqueId(String value) => setField<String>('unique_id', value);

  String get primaryTeam => getField<String>('primary_team')!;
  set primaryTeam(String value) => setField<String>('primary_team', value);

  String get opponentTeam => getField<String>('opponent_team')!;
  set opponentTeam(String value) => setField<String>('opponent_team', value);

  bool get isHomeGame => getField<bool>('is_home_game')!;
  set isHomeGame(bool value) => setField<bool>('is_home_game', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get primaryMl => getField<double>('primary_ml');
  set primaryMl(double? value) => setField<double>('primary_ml', value);

  double? get primaryRl => getField<double>('primary_rl');
  set primaryRl(double? value) => setField<double>('primary_rl', value);

  double? get opponentMl => getField<double>('opponent_ml');
  set opponentMl(double? value) => setField<double>('opponent_ml', value);

  double? get opponentRl => getField<double>('opponent_rl');
  set opponentRl(double? value) => setField<double>('opponent_rl', value);

  double? get ouResult => getField<double>('ou_result');
  set ouResult(double? value) => setField<double>('ou_result', value);

  double? get primaryWin => getField<double>('primary_win');
  set primaryWin(double? value) => setField<double>('primary_win', value);

  double? get primaryRunlineWin => getField<double>('primary_runline_win');
  set primaryRunlineWin(double? value) =>
      setField<double>('primary_runline_win', value);
}
