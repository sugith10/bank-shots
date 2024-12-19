import 'package:core_provider/core_provider.dart';

import 'providers/goal_provider/goal_notifier.dart';
import 'providers/qoute_provider.dart';

abstract final class CoreProvider {
  static final goalProvider =
      StateNotifierProvider<GoalNotifier, GoalState>((ref) {
    return GoalNotifier();
  });

  static final qouteProvider =
      StateNotifierProvider<QouteProvider, Qoute>((ref) {
    return QouteProvider();
  });
}
