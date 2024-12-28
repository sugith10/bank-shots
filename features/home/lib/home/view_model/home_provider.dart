import 'package:core_provider/core_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:goal/home/view/pages/goal_home_page.dart';

import 'home_state.dart';

final class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState(widget: GoalHomePage()));

  final List<Widget> _pageList = [
    const GoalHomePage(),
    const GoalHomePage(),
  ];

  void updateIndex({required int index}) {
    _pageList.add(const GoalHomePage());
    state = state.copyWith(
      index: index,
      widget: _pageList[0],
    );
  }
}
