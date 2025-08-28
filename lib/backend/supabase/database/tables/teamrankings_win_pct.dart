import '../database.dart';

class TeamrankingsWinPctTable extends SupabaseTable<TeamrankingsWinPctRow> {
  @override
  String get tableName => 'teamrankings_win_pct';

  @override
  TeamrankingsWinPctRow createRow(Map<String, dynamic> data) =>
      TeamrankingsWinPctRow(data);
}

class TeamrankingsWinPctRow extends SupabaseDataRow {
  TeamrankingsWinPctRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamrankingsWinPctTable();

  String get team => getField<String>('team')!;
  set team(String value) => setField<String>('team', value);

  double? get winPct => getField<double>('win_pct');
  set winPct(double? value) => setField<double>('win_pct', value);
}
