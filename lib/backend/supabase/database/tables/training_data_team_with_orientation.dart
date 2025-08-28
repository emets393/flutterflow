import '../database.dart';

class TrainingDataTeamWithOrientationTable
    extends SupabaseTable<TrainingDataTeamWithOrientationRow> {
  @override
  String get tableName => 'training_data_team_with_orientation';

  @override
  TrainingDataTeamWithOrientationRow createRow(Map<String, dynamic> data) =>
      TrainingDataTeamWithOrientationRow(data);
}

class TrainingDataTeamWithOrientationRow extends SupabaseDataRow {
  TrainingDataTeamWithOrientationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrainingDataTeamWithOrientationTable();

  String? get uniqueId => getField<String>('unique_id');
  set uniqueId(String? value) => setField<String>('unique_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get season => getField<int>('season');
  set season(int? value) => setField<int>('season', value);

  int? get month => getField<int>('month');
  set month(int? value) => setField<int>('month', value);

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);

  int? get seriesGameNumber => getField<int>('series_game_number');
  set seriesGameNumber(int? value) =>
      setField<int>('series_game_number', value);

  double? get oULine => getField<double>('o_u_line');
  set oULine(double? value) => setField<double>('o_u_line', value);

  int? get ouResult => getField<int>('ou_result');
  set ouResult(int? value) => setField<int>('ou_result', value);

  String? get primaryTeam => getField<String>('primary_team');
  set primaryTeam(String? value) => setField<String>('primary_team', value);

  int? get primaryTeamNumber => getField<int>('primary_team_number');
  set primaryTeamNumber(int? value) =>
      setField<int>('primary_team_number', value);

  String? get primaryUniqueTeamId => getField<String>('primary_unique_team_id');
  set primaryUniqueTeamId(String? value) =>
      setField<String>('primary_unique_team_id', value);

  int? get primaryMl => getField<int>('primary_ml');
  set primaryMl(int? value) => setField<int>('primary_ml', value);

  double? get primaryRl => getField<double>('primary_rl');
  set primaryRl(double? value) => setField<double>('primary_rl', value);

  double? get primaryMlHandle => getField<double>('primary_ml_handle');
  set primaryMlHandle(double? value) =>
      setField<double>('primary_ml_handle', value);

  double? get primaryMlBets => getField<double>('primary_ml_bets');
  set primaryMlBets(double? value) =>
      setField<double>('primary_ml_bets', value);

  double? get primaryRlHandle => getField<double>('primary_rl_handle');
  set primaryRlHandle(double? value) =>
      setField<double>('primary_rl_handle', value);

  double? get primaryRlBets => getField<double>('primary_rl_bets');
  set primaryRlBets(double? value) =>
      setField<double>('primary_rl_bets', value);

  double? get primaryWinPct => getField<double>('primary_win_pct');
  set primaryWinPct(double? value) =>
      setField<double>('primary_win_pct', value);

  int? get primaryLastWin => getField<int>('primary_last_win');
  set primaryLastWin(int? value) => setField<int>('primary_last_win', value);

  int? get primaryLastRuns => getField<int>('primary_last_runs');
  set primaryLastRuns(int? value) => setField<int>('primary_last_runs', value);

  int? get primaryLastRunsAllowed => getField<int>('primary_last_runs_allowed');
  set primaryLastRunsAllowed(int? value) =>
      setField<int>('primary_last_runs_allowed', value);

  double? get primaryOpsLast3 => getField<double>('primary_ops_last_3');
  set primaryOpsLast3(double? value) =>
      setField<double>('primary_ops_last_3', value);

  double? get primaryTeamLast3 => getField<double>('primary_team_last_3');
  set primaryTeamLast3(double? value) =>
      setField<double>('primary_team_last_3', value);

  String? get primaryPitcher => getField<String>('primary_pitcher');
  set primaryPitcher(String? value) =>
      setField<String>('primary_pitcher', value);

  int? get primaryPitcherId => getField<int>('primary_pitcher_id');
  set primaryPitcherId(int? value) =>
      setField<int>('primary_pitcher_id', value);

  double? get primaryWhip => getField<double>('primary_whip');
  set primaryWhip(double? value) => setField<double>('primary_whip', value);

  double? get primaryEra => getField<double>('primary_era');
  set primaryEra(double? value) => setField<double>('primary_era', value);

  int? get primaryHandedness => getField<int>('primary_handedness');
  set primaryHandedness(int? value) =>
      setField<int>('primary_handedness', value);

  int? get primaryDivisionNumber => getField<int>('primary_division_number');
  set primaryDivisionNumber(int? value) =>
      setField<int>('primary_division_number', value);

  int? get primaryLeagueNumber => getField<int>('primary_league_number');
  set primaryLeagueNumber(int? value) =>
      setField<int>('primary_league_number', value);

  int? get primaryStreak => getField<int>('primary_streak');
  set primaryStreak(int? value) => setField<int>('primary_streak', value);

  String? get opponentTeam => getField<String>('opponent_team');
  set opponentTeam(String? value) => setField<String>('opponent_team', value);

  int? get opponentTeamNumber => getField<int>('opponent_team_number');
  set opponentTeamNumber(int? value) =>
      setField<int>('opponent_team_number', value);

  String? get opponentUniqueTeamId =>
      getField<String>('opponent_unique_team_id');
  set opponentUniqueTeamId(String? value) =>
      setField<String>('opponent_unique_team_id', value);

  int? get opponentMl => getField<int>('opponent_ml');
  set opponentMl(int? value) => setField<int>('opponent_ml', value);

  double? get opponentRl => getField<double>('opponent_rl');
  set opponentRl(double? value) => setField<double>('opponent_rl', value);

  double? get opponentMlHandle => getField<double>('opponent_ml_handle');
  set opponentMlHandle(double? value) =>
      setField<double>('opponent_ml_handle', value);

  double? get opponentMlBets => getField<double>('opponent_ml_bets');
  set opponentMlBets(double? value) =>
      setField<double>('opponent_ml_bets', value);

  double? get opponentRlHandle => getField<double>('opponent_rl_handle');
  set opponentRlHandle(double? value) =>
      setField<double>('opponent_rl_handle', value);

  double? get opponentRlBets => getField<double>('opponent_rl_bets');
  set opponentRlBets(double? value) =>
      setField<double>('opponent_rl_bets', value);

  double? get opponentWinPct => getField<double>('opponent_win_pct');
  set opponentWinPct(double? value) =>
      setField<double>('opponent_win_pct', value);

  int? get opponentLastWin => getField<int>('opponent_last_win');
  set opponentLastWin(int? value) => setField<int>('opponent_last_win', value);

  int? get opponentLastRuns => getField<int>('opponent_last_runs');
  set opponentLastRuns(int? value) =>
      setField<int>('opponent_last_runs', value);

  int? get opponentLastRunsAllowed =>
      getField<int>('opponent_last_runs_allowed');
  set opponentLastRunsAllowed(int? value) =>
      setField<int>('opponent_last_runs_allowed', value);

  double? get opponentOpsLast3 => getField<double>('opponent_ops_last_3');
  set opponentOpsLast3(double? value) =>
      setField<double>('opponent_ops_last_3', value);

  double? get opponentTeamLast3 => getField<double>('opponent_team_last_3');
  set opponentTeamLast3(double? value) =>
      setField<double>('opponent_team_last_3', value);

  String? get opponentPitcher => getField<String>('opponent_pitcher');
  set opponentPitcher(String? value) =>
      setField<String>('opponent_pitcher', value);

  int? get opponentPitcherId => getField<int>('opponent_pitcher_id');
  set opponentPitcherId(int? value) =>
      setField<int>('opponent_pitcher_id', value);

  double? get opponentWhip => getField<double>('opponent_whip');
  set opponentWhip(double? value) => setField<double>('opponent_whip', value);

  double? get opponentEra => getField<double>('opponent_era');
  set opponentEra(double? value) => setField<double>('opponent_era', value);

  int? get opponentHandedness => getField<int>('opponent_handedness');
  set opponentHandedness(int? value) =>
      setField<int>('opponent_handedness', value);

  int? get opponentDivisionNumber => getField<int>('opponent_division_number');
  set opponentDivisionNumber(int? value) =>
      setField<int>('opponent_division_number', value);

  int? get opponentLeagueNumber => getField<int>('opponent_league_number');
  set opponentLeagueNumber(int? value) =>
      setField<int>('opponent_league_number', value);

  int? get opponentStreak => getField<int>('opponent_streak');
  set opponentStreak(int? value) => setField<int>('opponent_streak', value);

  int? get primaryWin => getField<int>('primary_win');
  set primaryWin(int? value) => setField<int>('primary_win', value);

  int? get primaryRunlineWin => getField<int>('primary_runline_win');
  set primaryRunlineWin(int? value) =>
      setField<int>('primary_runline_win', value);

  String? get dataSource => getField<String>('data_source');
  set dataSource(String? value) => setField<String>('data_source', value);

  double? get startTimeMinutes => getField<double>('start_time_minutes');
  set startTimeMinutes(double? value) =>
      setField<double>('start_time_minutes', value);

  int? get sameDivision => getField<int>('same_division');
  set sameDivision(int? value) => setField<int>('same_division', value);

  int? get sameLeague => getField<int>('same_league');
  set sameLeague(int? value) => setField<int>('same_league', value);

  int? get seriesPrimaryWins => getField<int>('series_primary_wins');
  set seriesPrimaryWins(int? value) =>
      setField<int>('series_primary_wins', value);

  int? get seriesOpponentWins => getField<int>('series_opponent_wins');
  set seriesOpponentWins(int? value) =>
      setField<int>('series_opponent_wins', value);

  int? get seriesOvers => getField<int>('series_overs');
  set seriesOvers(int? value) => setField<int>('series_overs', value);

  int? get seriesUnders => getField<int>('series_unders');
  set seriesUnders(int? value) => setField<int>('series_unders', value);

  double? get ouHandleOver => getField<double>('ou_handle_over');
  set ouHandleOver(double? value) => setField<double>('ou_handle_over', value);

  double? get ouBetsOver => getField<double>('ou_bets_over');
  set ouBetsOver(double? value) => setField<double>('ou_bets_over', value);

  bool? get isHomeTeam => getField<bool>('is_home_team');
  set isHomeTeam(bool? value) => setField<bool>('is_home_team', value);

  String? get orientationUniqueId => getField<String>('orientation_unique_id');
  set orientationUniqueId(String? value) =>
      setField<String>('orientation_unique_id', value);
}
