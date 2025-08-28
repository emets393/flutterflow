import '../database.dart';

class TeamrankingsOpsLast3Table extends SupabaseTable<TeamrankingsOpsLast3Row> {
  @override
  String get tableName => 'teamrankings_ops_last3';

  @override
  TeamrankingsOpsLast3Row createRow(Map<String, dynamic> data) =>
      TeamrankingsOpsLast3Row(data);
}

class TeamrankingsOpsLast3Row extends SupabaseDataRow {
  TeamrankingsOpsLast3Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamrankingsOpsLast3Table();

  String get team => getField<String>('team')!;
  set team(String value) => setField<String>('team', value);

  double? get opsLast3 => getField<double>('ops_last_3');
  set opsLast3(double? value) => setField<double>('ops_last_3', value);
}
