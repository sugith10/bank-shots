part of 'goal_notifier.dart';

@immutable
final class GoalState {
  const GoalState({
    required this.icon,
    this.validTitle = false,
    this.validGoalAmount = false,
    this.goalName = '',
    this.goalAmount = 2000,
    this.currentBalance = 0,
    this.next = false,
    this.error = false,
    this.message = '',
  });
  final String icon;
  final bool validTitle;
  final bool validGoalAmount;
  final String goalName;
  final double? goalAmount;
  final double currentBalance;
  final bool error;
  final bool next;
  final String message;

  GoalState copyWith({
    String? icon,
    bool? validTitle,
    String? goalName,
    double? goalAmount,
    double? currentBalance,
    bool? error,
    bool? next,
    String? qoute,
    String? message,
    // double? slideValue,
  }) {
    return GoalState(
      icon: icon ?? this.icon,
      validTitle: validTitle ?? this.validTitle,
      goalName: goalName ?? this.goalName,
      goalAmount: goalAmount ?? this.goalAmount,
      currentBalance: currentBalance ?? this.currentBalance,
      error: error ?? this.error,
      next: next ?? this.next,
      message: message ?? this.message,
    );
  }
}
