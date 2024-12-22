import 'package:core_navigation/core_navigation.dart';
import 'package:core_provider/core_provider.dart';

part 'splash_state.dart';

final class SplashProvider extends StateNotifier<SplashState> {
  SplashProvider() : super(const SplashState());

  Future<void> getNextScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      state = state.copyWith(route: AppRoutes.home);
    });
  }
}
