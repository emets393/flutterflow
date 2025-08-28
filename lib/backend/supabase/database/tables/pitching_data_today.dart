import '../database.dart';

class PitchingDataTodayTable extends SupabaseTable<PitchingDataTodayRow> {
  @override
  String get tableName => 'pitching_data_today';

  @override
  PitchingDataTodayRow createRow(Map<String, dynamic> data) =>
      PitchingDataTodayRow(data);
}

class PitchingDataTodayRow extends SupabaseDataRow {
  PitchingDataTodayRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PitchingDataTodayTable();

  String get uniqueId => getField<String>('unique_id')!;
  set uniqueId(String value) => setField<String>('unique_id', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get startTimeEt => getField<String>('start_time_et');
  set startTimeEt(String? value) => setField<String>('start_time_et', value);

  String? get awayTeam => getField<String>('away_team');
  set awayTeam(String? value) => setField<String>('away_team', value);

  String? get awayPitcher => getField<String>('away_pitcher');
  set awayPitcher(String? value) => setField<String>('away_pitcher', value);

  int? get awayPitcherId => getField<int>('away_pitcher_id');
  set awayPitcherId(int? value) => setField<int>('away_pitcher_id', value);

  String? get awayEra => getField<String>('away_era');
  set awayEra(String? value) => setField<String>('away_era', value);

  String? get awayWhip => getField<String>('away_whip');
  set awayWhip(String? value) => setField<String>('away_whip', value);

  String? get homeTeam => getField<String>('home_team');
  set homeTeam(String? value) => setField<String>('home_team', value);

  String? get homePitcher => getField<String>('home_pitcher');
  set homePitcher(String? value) => setField<String>('home_pitcher', value);

  int? get homePitcherId => getField<int>('home_pitcher_id');
  set homePitcherId(int? value) => setField<int>('home_pitcher_id', value);

  String? get homeEra => getField<String>('home_era');
  set homeEra(String? value) => setField<String>('home_era', value);

  String? get homeWhip => getField<String>('home_whip');
  set homeWhip(String? value) => setField<String>('home_whip', value);

  String? get awayHandedness => getField<String>('away_handedness');
  set awayHandedness(String? value) =>
      setField<String>('away_handedness', value);

  String? get homeHandedness => getField<String>('home_handedness');
  set homeHandedness(String? value) =>
      setField<String>('home_handedness', value);

  int? get doubleheaderGame => getField<int>('doubleheader_game');
  set doubleheaderGame(int? value) => setField<int>('doubleheader_game', value);
}
