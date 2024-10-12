import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/gen/assets.gen.dart';

@immutable
final class Goal {
  final String icon;
  final bool validTitle;
  final bool validGoalAmount;
  final String goalName;
  final double? goalAmount;
  final double? currentAmount;
  final bool error;
  final bool next;

  const Goal({
    required this.icon,
    this.validTitle = false,
    this.validGoalAmount = false,
    this.goalName = '',
    this.goalAmount,
    this.currentAmount,
    this.next = false,
    this.error = false,
  });

  Goal copyWith({
    String? icon,
    bool? validTitle,
    String? goalName,
    double? goalAmount,
    double? currentAmount,
    bool? error,
    bool? next,
    String? qoute,
  }) {
    return Goal(
      icon: icon ?? this.icon,
      validTitle: validTitle ?? this.validTitle,
      goalName: goalName ?? this.goalName,
      goalAmount: goalAmount ?? this.goalAmount,
      currentAmount: currentAmount ?? this.currentAmount,
      error: error ?? this.error,
      next: next ?? this.next,
    );
  }
}

final class GoalNotifier extends StateNotifier<Goal> {
  GoalNotifier()
      : super(Goal(
          icon: Assets.svg.pyramid,
        ));

  void onUpdateGoalIcon({required String icon}) {
    state = state.copyWith(icon: icon);
  }

  void onValidTitle({required String title}) {
    title = title.trim();
    if (title.isNotEmpty && title.length > 3 && title.length < 20) {
      state = state.copyWith(goalName: title, next: true);
    } else {
      state = state.copyWith(validTitle: false);
    }
  }

  void onSetGoalName() {
    state = state.copyWith(next: false);
  }

  void onValidGoalAmount({required String amount}) {
    final double? goalAmount = double.tryParse(amount);

    if (goalAmount != null) {
      state = state.copyWith(
        goalAmount: goalAmount,
        next: true,
        error: false,
      );
    } else {
      state = state.copyWith(next: false, error: true);
    }
  }

  void onSetGoalAmout() {
    state = state.copyWith(next: false);
  }
}
