import 'package:flutter/widgets.dart';

final class HomeState {
  const HomeState({
    required this.widget,
    this.index = 0,
  });
  final int index;
  final Widget widget;

  HomeState copyWith({
    required int index,
    required Widget widget,
  }) {
    return HomeState(
      index: index,
      widget: widget,
    );
  }
}
