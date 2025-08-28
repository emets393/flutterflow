import '../database.dart';

class InputValuesTeamFormatViewTable
    extends SupabaseTable<InputValuesTeamFormatViewRow> {
  @override
  String get tableName => 'input_values_team_format_view';

  @override
  InputValuesTeamFormatViewRow createRow(Map<String, dynamic> data) =>
      InputValuesTeamFormatViewRow(data);
}

class InputValuesTeamFormatViewRow extends SupabaseDataRow {
  InputValuesTeamFormatViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InputValuesTeamFormatViewTable();

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

  int? get sameDivision => getField<int>('same_division');
  set sameDivision(int? value) => setField<int>('same_division', value);

  int? get sameLeague => getField<int>('same_league');
  set sameLeague(int? value) => setField<int>('same_league', value);

  int? get seriesOvers => getField<int>('series_overs');
  set seriesOvers(int? value) => setField<int>('series_overs', value);

  int? get seriesUnders => getField<int>('series_unders');
  set seriesUnders(int? value) => setField<int>('series_unders', value);

  double? get ouHandleOver => getField<double>('ou_handle_over');
  set ouHandleOver(double? value) => setField<double>('ou_handle_over', value);

  double? get ouBetsOver => getField<double>('ou_bets_over');
  set ouBetsOver(double? value) => setField<double>('ou_bets_over', value);

  String? get uniqueId => getField<String>('unique_id');
  set uniqueId(String? value) => setField<String>('unique_id', value);

  bool? get isHomeTeam => getField<bool>('is_home_team');
  set isHomeTeam(bool? value) => setField<bool>('is_home_team', value);

  int? get primaryTeamNumber => getField<int>('primary_team_number');
  set primaryTeamNumber(int? value) =>
      setField<int>('primary_team_number', value);

  int? get opponentTeamNumber => getField<int>('opponent_team_number');
  set opponentTeamNumber(int? value) =>
      setField<int>('opponent_team_number', value);

  String? get primaryVsOpponentId => getField<String>('primary_vs_opponent_id');
  set primaryVsOpponentId(String? value) =>
      setField<String>('primary_vs_opponent_id', value);

  String? get teamSide => getField<String>('team_side');
  set teamSide(String? value) => setField<String>('team_side', value);

  String? get primaryTeam => getField<String>('primary_team');
  set primaryTeam(String? value) => setField<String>('primary_team', value);

  String? get opponentTeam => getField<String>('opponent_team');
  set opponentTeam(String? value) => setField<String>('opponent_team', value);

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

  int? get primaryStreak => getField<int>('primary_streak');
  set primaryStreak(int? value) => setField<int>('primary_streak', value);

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

  int? get opponentStreak => getField<int>('opponent_streak');
  set opponentStreak(int? value) => setField<int>('opponent_streak', value);
}
