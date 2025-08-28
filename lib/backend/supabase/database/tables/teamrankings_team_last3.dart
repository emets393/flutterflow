import '../database.dart';

class TeamrankingsTeamLast3Table
    extends SupabaseTable<TeamrankingsTeamLast3Row> {
  @override
  String get tableName => 'teamrankings_team_last3';

  @override
  TeamrankingsTeamLast3Row createRow(Map<String, dynamic> data) =>
      TeamrankingsTeamLast3Row(data);
}

class TeamrankingsTeamLast3Row extends SupabaseDataRow {
  TeamrankingsTeamLast3Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamrankingsTeamLast3Table();

  String get team => getField<String>('team')!;
  set team(String value) => setField<String>('team', value);

  double? get teamLast3 => getField<double>('team_last_3');
  set teamLast3(double? value) => setField<double>('team_last_3', value);
}
