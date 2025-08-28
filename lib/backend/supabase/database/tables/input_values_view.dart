import '../database.dart';

class InputValuesViewTable extends SupabaseTable<InputValuesViewRow> {
  @override
  String get tableName => 'input_values_view';

  @override
  InputValuesViewRow createRow(Map<String, dynamic> data) =>
      InputValuesViewRow(data);
}

class InputValuesViewRow extends SupabaseDataRow {
  InputValuesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InputValuesViewTable();

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get uniqueId => getField<String>('unique_id');
  set uniqueId(String? value) => setField<String>('unique_id', value);

  String? get homeTeam => getField<String>('home_team');
  set homeTeam(String? value) => setField<String>('home_team', value);

  String? get awayTeam => getField<String>('away_team');
  set awayTeam(String? value) => setField<String>('away_team', value);

  int? get homeMl => getField<int>('home_ml');
  set homeMl(int? value) => setField<int>('home_ml', value);

  int? get awayMl => getField<int>('away_ml');
  set awayMl(int? value) => setField<int>('away_ml', value);

  double? get homeRl => getField<double>('home_rl');
  set homeRl(double? value) => setField<double>('home_rl', value);

  double? get awayRl => getField<double>('away_rl');
  set awayRl(double? value) => setField<double>('away_rl', value);

  double? get homeMlHandle => getField<double>('home_ml_handle');
  set homeMlHandle(double? value) => setField<double>('home_ml_handle', value);

  double? get awayMlHandle => getField<double>('away_ml_handle');
  set awayMlHandle(double? value) => setField<double>('away_ml_handle', value);

  double? get homeMlBets => getField<double>('home_ml_bets');
  set homeMlBets(double? value) => setField<double>('home_ml_bets', value);

  double? get awayMlBets => getField<double>('away_ml_bets');
  set awayMlBets(double? value) => setField<double>('away_ml_bets', value);

  double? get homeRlHandle => getField<double>('home_rl_handle');
  set homeRlHandle(double? value) => setField<double>('home_rl_handle', value);

  double? get awayRlHandle => getField<double>('away_rl_handle');
  set awayRlHandle(double? value) => setField<double>('away_rl_handle', value);

  double? get ouHandleOver => getField<double>('ou_handle_over');
  set ouHandleOver(double? value) => setField<double>('ou_handle_over', value);

  double? get ouBetsOver => getField<double>('ou_bets_over');
  set ouBetsOver(double? value) => setField<double>('ou_bets_over', value);

  double? get homeRlBets => getField<double>('home_rl_bets');
  set homeRlBets(double? value) => setField<double>('home_rl_bets', value);

  double? get awayRlBets => getField<double>('away_rl_bets');
  set awayRlBets(double? value) => setField<double>('away_rl_bets', value);

  double? get oULine => getField<double>('o_u_line');
  set oULine(double? value) => setField<double>('o_u_line', value);

  int? get season => getField<int>('season');
  set season(int? value) => setField<int>('season', value);

  int? get month => getField<int>('month');
  set month(int? value) => setField<int>('month', value);

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);

  int? get excelDate => getField<int>('excel_date');
  set excelDate(int? value) => setField<int>('excel_date', value);

  String? get uniqueHomeTeamId => getField<String>('unique_home_team_id');
  set uniqueHomeTeamId(String? value) =>
      setField<String>('unique_home_team_id', value);

  String? get uniqueAwayTeamId => getField<String>('unique_away_team_id');
  set uniqueAwayTeamId(String? value) =>
      setField<String>('unique_away_team_id', value);

  double? get startTimeMinutes => getField<double>('start_time_minutes');
  set startTimeMinutes(double? value) =>
      setField<double>('start_time_minutes', value);

  String? get homePitcher => getField<String>('home_pitcher');
  set homePitcher(String? value) => setField<String>('home_pitcher', value);

  String? get awayPitcher => getField<String>('away_pitcher');
  set awayPitcher(String? value) => setField<String>('away_pitcher', value);

  double? get homeEra => getField<double>('home_era');
  set homeEra(double? value) => setField<double>('home_era', value);

  double? get awayEra => getField<double>('away_era');
  set awayEra(double? value) => setField<double>('away_era', value);

  double? get homeWhip => getField<double>('home_whip');
  set homeWhip(double? value) => setField<double>('home_whip', value);

  double? get awayWhip => getField<double>('away_whip');
  set awayWhip(double? value) => setField<double>('away_whip', value);

  int? get homeHandedness => getField<int>('home_handedness');
  set homeHandedness(int? value) => setField<int>('home_handedness', value);

  int? get awayHandedness => getField<int>('away_handedness');
  set awayHandedness(int? value) => setField<int>('away_handedness', value);

  int? get homePitcherId => getField<int>('home_pitcher_id');
  set homePitcherId(int? value) => setField<int>('home_pitcher_id', value);

  int? get awayPitcherId => getField<int>('away_pitcher_id');
  set awayPitcherId(int? value) => setField<int>('away_pitcher_id', value);

  double? get homeTeamLast3 => getField<double>('home_team_last_3');
  set homeTeamLast3(double? value) =>
      setField<double>('home_team_last_3', value);

  double? get awayTeamLast3 => getField<double>('away_team_last_3');
  set awayTeamLast3(double? value) =>
      setField<double>('away_team_last_3', value);

  double? get homeWinPct => getField<double>('home_win_pct');
  set homeWinPct(double? value) => setField<double>('home_win_pct', value);

  double? get awayWinPct => getField<double>('away_win_pct');
  set awayWinPct(double? value) => setField<double>('away_win_pct', value);

  double? get homeOpsLast3 => getField<double>('home_ops_last_3');
  set homeOpsLast3(double? value) => setField<double>('home_ops_last_3', value);

  double? get awayOpsLast3 => getField<double>('away_ops_last_3');
  set awayOpsLast3(double? value) => setField<double>('away_ops_last_3', value);

  int? get homeTeamNumber => getField<int>('home_team_number');
  set homeTeamNumber(int? value) => setField<int>('home_team_number', value);

  int? get homeLeagueNumber => getField<int>('home_league_number');
  set homeLeagueNumber(int? value) =>
      setField<int>('home_league_number', value);

  int? get homeDivisionNumber => getField<int>('home_division_number');
  set homeDivisionNumber(int? value) =>
      setField<int>('home_division_number', value);

  int? get awayTeamNumber => getField<int>('away_team_number');
  set awayTeamNumber(int? value) => setField<int>('away_team_number', value);

  int? get awayLeagueNumber => getField<int>('away_league_number');
  set awayLeagueNumber(int? value) =>
      setField<int>('away_league_number', value);

  int? get awayDivisionNumber => getField<int>('away_division_number');
  set awayDivisionNumber(int? value) =>
      setField<int>('away_division_number', value);

  int? get sameLeague => getField<int>('same_league');
  set sameLeague(int? value) => setField<int>('same_league', value);

  int? get sameDivision => getField<int>('same_division');
  set sameDivision(int? value) => setField<int>('same_division', value);

  int? get seriesGameNumber => getField<int>('series_game_number');
  set seriesGameNumber(int? value) =>
      setField<int>('series_game_number', value);

  int? get seriesHomeWins => getField<int>('series_home_wins');
  set seriesHomeWins(int? value) => setField<int>('series_home_wins', value);

  int? get streak => getField<int>('streak');
  set streak(int? value) => setField<int>('streak', value);

  int? get homeLastWin => getField<int>('home_last_win');
  set homeLastWin(int? value) => setField<int>('home_last_win', value);

  int? get homeLastRuns => getField<int>('home_last_runs');
  set homeLastRuns(int? value) => setField<int>('home_last_runs', value);

  int? get homeLastRunsAllowed => getField<int>('home_last_runs_allowed');
  set homeLastRunsAllowed(int? value) =>
      setField<int>('home_last_runs_allowed', value);

  int? get seriesOvers => getField<int>('series_overs');
  set seriesOvers(int? value) => setField<int>('series_overs', value);

  int? get seriesUnders => getField<int>('series_unders');
  set seriesUnders(int? value) => setField<int>('series_unders', value);

  int? get seriesAwayWins => getField<int>('series_away_wins');
  set seriesAwayWins(int? value) => setField<int>('series_away_wins', value);

  int? get awayStreak => getField<int>('away_streak');
  set awayStreak(int? value) => setField<int>('away_streak', value);

  int? get awayLastWin => getField<int>('away_last_win');
  set awayLastWin(int? value) => setField<int>('away_last_win', value);

  int? get awayLastRuns => getField<int>('away_last_runs');
  set awayLastRuns(int? value) => setField<int>('away_last_runs', value);

  int? get awayLastRunsAllowed => getField<int>('away_last_runs_allowed');
  set awayLastRunsAllowed(int? value) =>
      setField<int>('away_last_runs_allowed', value);
}
