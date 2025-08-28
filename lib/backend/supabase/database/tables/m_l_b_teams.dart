import '../database.dart';

class MLBTeamsTable extends SupabaseTable<MLBTeamsRow> {
  @override
  String get tableName => 'MLB_Teams';

  @override
  MLBTeamsRow createRow(Map<String, dynamic> data) => MLBTeamsRow(data);
}

class MLBTeamsRow extends SupabaseDataRow {
  MLBTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MLBTeamsTable();

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get teamRankingsName => getField<String>('TeamRankingsName');
  set teamRankingsName(String? value) =>
      setField<String>('TeamRankingsName', value);

  String? get shortName => getField<String>('short_name');
  set shortName(String? value) => setField<String>('short_name', value);

  int? get teamNumber => getField<int>('team_number');
  set teamNumber(int? value) => setField<int>('team_number', value);

  int? get leagueNumber => getField<int>('league_number');
  set leagueNumber(int? value) => setField<int>('league_number', value);

  int? get divisionNumber => getField<int>('division_number');
  set divisionNumber(int? value) => setField<int>('division_number', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);
}
