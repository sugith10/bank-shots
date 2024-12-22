import 'package:core_provider/core_provider.dart';

import 'providers/goal_provider/goal_notifier.dart';
import 'providers/qoute_provider.dart';

abstract final class GoalProvider {
  static final goal = StateNotifierProvider<GoalNotifier, GoalState>((ref) {
    return GoalNotifier();
  });

  static final qoute = StateNotifierProvider<QouteProvider, Qoute>((ref) {
    return QouteProvider();
  });
}
