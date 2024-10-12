import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/goal/presentation/providers/goal_provider.dart';
import '../../features/goal/presentation/providers/qoute_provider.dart';

final goalProvider = StateNotifierProvider<GoalNotifier, Goal>((ref) {
  return GoalNotifier();
});

final qouteProvider = StateNotifierProvider<QouteProvider, Qoute>((ref) {
  return QouteProvider();
});
