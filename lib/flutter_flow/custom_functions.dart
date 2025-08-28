import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String? getTeamLogo(String? teamName) {
  final String team = teamName?.trim() ?? '';
  final Map<String, String> logoMap = {
    'Arizona': 'https://a.espncdn.com/i/teamlogos/mlb/500/ari.png',
    'Atlanta': 'https://a.espncdn.com/i/teamlogos/mlb/500/atl.png',
    'Baltimore': 'https://a.espncdn.com/i/teamlogos/mlb/500/bal.png',
    'Boston': 'https://a.espncdn.com/i/teamlogos/mlb/500/bos.png',
    'Cubs': 'https://a.espncdn.com/i/teamlogos/mlb/500/chc.png',
    'White Sox': 'https://a.espncdn.com/i/teamlogos/mlb/500/cws.png',
    'Cincinnati': 'https://a.espncdn.com/i/teamlogos/mlb/500/cin.png',
    'Cleveland': 'https://a.espncdn.com/i/teamlogos/mlb/500/cle.png',
    'Colorado': 'https://a.espncdn.com/i/teamlogos/mlb/500/col.png',
    'Detroit': 'https://a.espncdn.com/i/teamlogos/mlb/500/det.png',
    'Houston': 'https://a.espncdn.com/i/teamlogos/mlb/500/hou.png',
    'Kansas City': 'https://a.espncdn.com/i/teamlogos/mlb/500/kc.png',
    'Angels': 'https://a.espncdn.com/i/teamlogos/mlb/500/laa.png',
    'Dodgers': 'https://a.espncdn.com/i/teamlogos/mlb/500/lad.png',
    'Miami': 'https://a.espncdn.com/i/teamlogos/mlb/500/mia.png',
    'Milwaukee': 'https://a.espncdn.com/i/teamlogos/mlb/500/mil.png',
    'Minnesota': 'https://a.espncdn.com/i/teamlogos/mlb/500/min.png',
    'Mets': 'https://a.espncdn.com/i/teamlogos/mlb/500/nym.png',
    'Yankees': 'https://a.espncdn.com/i/teamlogos/mlb/500/nyy.png',
    'Athletics': 'https://a.espncdn.com/i/teamlogos/mlb/500/oak.png',
    'Philadelphia': 'https://a.espncdn.com/i/teamlogos/mlb/500/phi.png',
    'Pittsburgh': 'https://a.espncdn.com/i/teamlogos/mlb/500/pit.png',
    'San Diego': 'https://a.espncdn.com/i/teamlogos/mlb/500/sd.png',
    'San Francisco': 'https://a.espncdn.com/i/teamlogos/mlb/500/sf.png',
    'Seattle': 'https://a.espncdn.com/i/teamlogos/mlb/500/sea.png',
    'ST Louis': 'https://a.espncdn.com/i/teamlogos/mlb/500/stl.png',
    'Tampa Bay': 'https://a.espncdn.com/i/teamlogos/mlb/500/tb.png',
    'Texas': 'https://a.espncdn.com/i/teamlogos/mlb/500/tex.png',
    'Toronto': 'https://a.espncdn.com/i/teamlogos/mlb/500/tor.png',
    'Washington': 'https://a.espncdn.com/i/teamlogos/mlb/500/wsh.png',
    '49ers': 'https://a.espncdn.com/i/teamlogos/nfl/500/sf.png',
    'Bears': 'https://a.espncdn.com/i/teamlogos/nfl/500/chi.png',
    'Bengals': 'https://a.espncdn.com/i/teamlogos/nfl/500/cin.png',
    'Bills': 'https://a.espncdn.com/i/teamlogos/nfl/500/buf.png',
    'Broncos': 'https://a.espncdn.com/i/teamlogos/nfl/500/den.png',
    'Browns': 'https://a.espncdn.com/i/teamlogos/nfl/500/cle.png',
    'Buccaneers': 'https://a.espncdn.com/i/teamlogos/nfl/500/tb.png',
    'Cardinals': 'https://a.espncdn.com/i/teamlogos/nfl/500/ari.png',
    'Chargers': 'https://a.espncdn.com/i/teamlogos/nfl/500/lac.png',
    'Chiefs': 'https://a.espncdn.com/i/teamlogos/nfl/500/kc.png',
    'Colts': 'https://a.espncdn.com/i/teamlogos/nfl/500/ind.png',
    'Commanders': 'https://a.espncdn.com/i/teamlogos/nfl/500/wsh.png',
    'Cowboys': 'https://a.espncdn.com/i/teamlogos/nfl/500/dal.png',
    'Dolphins': 'https://a.espncdn.com/i/teamlogos/nfl/500/mia.png',
    'Eagles': 'https://a.espncdn.com/i/teamlogos/nfl/500/phi.png',
    'Falcons': 'https://a.espncdn.com/i/teamlogos/nfl/500/atl.png',
    'Giants': 'https://a.espncdn.com/i/teamlogos/nfl/500/nyg.png',
    'Jaguars': 'https://a.espncdn.com/i/teamlogos/nfl/500/jax.png',
    'Jets': 'https://a.espncdn.com/i/teamlogos/nfl/500/nyj.png',
    'Lions': 'https://a.espncdn.com/i/teamlogos/nfl/500/det.png',
    'Packers': 'https://a.espncdn.com/i/teamlogos/nfl/500/gb.png',
    'Panthers': 'https://a.espncdn.com/i/teamlogos/nfl/500/car.png',
    'Patriots': 'https://a.espncdn.com/i/teamlogos/nfl/500/ne.png',
    'Raiders': 'https://a.espncdn.com/i/teamlogos/nfl/500/lv.png',
    'Rams': 'https://a.espncdn.com/i/teamlogos/nfl/500/lar.png',
    'Ravens': 'https://a.espncdn.com/i/teamlogos/nfl/500/bal.png',
    'Saints': 'https://a.espncdn.com/i/teamlogos/nfl/500/no.png',
    'Seahawks': 'https://a.espncdn.com/i/teamlogos/nfl/500/sea.png',
    'Steelers': 'https://a.espncdn.com/i/teamlogos/nfl/500/pit.png',
    'Texans': 'https://a.espncdn.com/i/teamlogos/nfl/500/hou.png',
    'Titans': 'https://a.espncdn.com/i/teamlogos/nfl/500/ten.png',
    'Vikings': 'https://a.espncdn.com/i/teamlogos/nfl/500/min.png',
  };

  return logoMap[team] ??
      'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg';
}

String? getInversePercent(double? value) {
  if (value == null) return '0%';
  final result = (1.0 - value) * 100;
  return '${result.round()}%';
}

String? formatToPercent(double? value) {
  if (value == null) return '0%';
  return '${(value * 100).toStringAsFixed(0)}%';
}

String? formatPercentDynamic(String? value) {
  final d = double.tryParse(value ?? '') ?? 0.0; // handles null/blank
  return '${(d * 100).toStringAsFixed(0)}%';
}

String? formatKickoff(String? iso) {
  if (iso == null || iso.trim().isEmpty) return 'TBD';
  final s = iso.trim();

  // 1) Try ISO 8601 with date
  try {
    if (s.contains('T') ||
        s.contains('Z') ||
        s.contains('+') ||
        RegExp(r'^\d{4}-\d{2}-\d{2}').hasMatch(s)) {
      final dt = DateTime.parse(s).toLocal();
      return DateFormat('h:mm a').format(dt);
    }
  } catch (_) {
    // fall through
  }

  // 2) Try HH:mm or HH:mm:ss (time-only)
  final m = RegExp(r'^(\d{1,2}):(\d{2})(?::(\d{2}))?$').firstMatch(s);
  if (m != null) {
    final hh = int.parse(m.group(1)!);
    final mm = int.parse(m.group(2)!);
    final ss = m.group(3) != null ? int.parse(m.group(3)!) : 0;
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, hh % 24, mm, ss);
    return DateFormat('h:mm a').format(dt);
  }

  // 3) Try minutes since midnight (e.g., "980")
  final mins = int.tryParse(s);
  if (mins != null) {
    final now = DateTime.now();
    final dt =
        DateTime(now.year, now.month, now.day).add(Duration(minutes: mins));
    return DateFormat('h:mm a').format(dt);
  }

  return 'TBD';
}

String? formatLine(String? value) {
  if (value == null || value.isEmpty) return '0';
  final numVal = double.tryParse(value) ?? 0;
  if (numVal > 0) {
    return '+${numVal.toStringAsFixed(0)}'; // add plus sign
  }
  return numVal.toStringAsFixed(0); // keep minus sign or zero
}

String? round1(String? value) {
  if (value == null || value.trim().isEmpty) {
    return null; // or return '—' if you prefer a placeholder
  }
  final parsed = double.tryParse(value);
  if (parsed == null) {
    return null; // or return '—'
  }
  return parsed.toStringAsFixed(1);
}
