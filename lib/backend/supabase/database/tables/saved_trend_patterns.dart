import '../database.dart';

class SavedTrendPatternsTable extends SupabaseTable<SavedTrendPatternsRow> {
  @override
  String get tableName => 'saved_trend_patterns';

  @override
  SavedTrendPatternsRow createRow(Map<String, dynamic> data) =>
      SavedTrendPatternsRow(data);
}

class SavedTrendPatternsRow extends SupabaseDataRow {
  SavedTrendPatternsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavedTrendPatternsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get patternName => getField<String>('pattern_name')!;
  set patternName(String value) => setField<String>('pattern_name', value);

  List<String> get features => getListField<String>('features');
  set features(List<String> value) => setListField<String>('features', value);

  String get target => getField<String>('target')!;
  set target(String value) => setField<String>('target', value);

  String get combo => getField<String>('combo')!;
  set combo(String value) => setField<String>('combo', value);

  double get winPct => getField<double>('win_pct')!;
  set winPct(double value) => setField<double>('win_pct', value);

  double get opponentWinPct => getField<double>('opponent_win_pct')!;
  set opponentWinPct(double value) =>
      setField<double>('opponent_win_pct', value);

  int get games => getField<int>('games')!;
  set games(int value) => setField<int>('games', value);

  int get featureCount => getField<int>('feature_count')!;
  set featureCount(int value) => setField<int>('feature_count', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get dominantSide => getField<String>('dominant_side');
  set dominantSide(String? value) => setField<String>('dominant_side', value);

  String? get orientationUniqueId => getField<String>('orientation_unique_id');
  set orientationUniqueId(String? value) =>
      setField<String>('orientation_unique_id', value);
}
