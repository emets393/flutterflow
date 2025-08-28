import '../database.dart';

class PatternRoiTable extends SupabaseTable<PatternRoiRow> {
  @override
  String get tableName => 'pattern_roi';

  @override
  PatternRoiRow createRow(Map<String, dynamic> data) => PatternRoiRow(data);
}

class PatternRoiRow extends SupabaseDataRow {
  PatternRoiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PatternRoiTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get savedPatternId => getField<String>('saved_pattern_id');
  set savedPatternId(String? value) =>
      setField<String>('saved_pattern_id', value);

  int? get totalGames => getField<int>('total_games');
  set totalGames(int? value) => setField<int>('total_games', value);

  int? get wins => getField<int>('wins');
  set wins(int? value) => setField<int>('wins', value);

  int? get losses => getField<int>('losses');
  set losses(int? value) => setField<int>('losses', value);

  double? get totalBetAmount => getField<double>('total_bet_amount');
  set totalBetAmount(double? value) =>
      setField<double>('total_bet_amount', value);

  double? get totalPayout => getField<double>('total_payout');
  set totalPayout(double? value) => setField<double>('total_payout', value);

  double? get roiPercentage => getField<double>('roi_percentage');
  set roiPercentage(double? value) => setField<double>('roi_percentage', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
