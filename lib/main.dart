import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:janken/ui/pages/match/match_view.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: MatchView(),
    ),
  ));
}
