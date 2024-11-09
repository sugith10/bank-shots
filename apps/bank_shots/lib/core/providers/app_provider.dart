import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/goal/presentation/providers/goal_provider/goal_notifier.dart';
import '../../features/goal/presentation/providers/goal_provider/goal_state.dart';
import '../../features/goal/presentation/providers/qoute_provider.dart';

final class AppProvider {
  AppProvider._();
  static final goalProvider =
      StateNotifierProvider<GoalNotifier, GoalState>((ref) {
    return GoalNotifier();
  });

  static final qouteProvider =
      StateNotifierProvider<QouteProvider, Qoute>((ref) {
    return QouteProvider();
  });
}
