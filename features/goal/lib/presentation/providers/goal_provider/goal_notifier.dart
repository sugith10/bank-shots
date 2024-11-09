import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'goal_state.dart';

final class GoalNotifier extends StateNotifier<GoalState> {
  GoalNotifier()
      : super(GoalState(
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
    amount = amount.trim();
    if (amount.isNotEmpty) {
      final double? goalAmount = double.tryParse(amount);

      if (goalAmount != null && goalAmount > 50) {
        state = state.copyWith(
          goalAmount: goalAmount,
          next: true,
          error: false,
        );
      } else {
        state = state.copyWith(next: false, error: true);
      }
    } else {
      state = state.copyWith(next: false, error: false);
    }
  }

  void onValidCurrentBalanceAmount({required String amount}) {
    amount = amount.trim();
    if (amount.isNotEmpty) {
      final double? currentBalance = double.tryParse(amount);

      // Check if the balance is a number
      if (currentBalance != null) {
        // Check if the balance is greater than the goal amount
        if (currentBalance <= state.goalAmount!) {
          state = state.copyWith(
            currentBalance: currentBalance,
            next: true,
            error: false,
            message: '',
          );
        } else {
          // Show error message
          state = state.copyWith(
            next: false,
            error: true,
            message: 'Balance can\'t be greater than the goal amount',
          );
        }
      } else {
        // Show error message
        state = state.copyWith(
          next: false,
          error: true,
          message: 'Balance needs to be a number',
        );
      }
    } else {
      state = state.copyWith(
        next: false,
        error: false,
        message: '',
      );
    }
  }

  void onSetGoalAmout() {
    state = state.copyWith(next: false);
  }
}
