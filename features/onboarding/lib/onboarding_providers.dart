import 'package:core_provider/core_provider.dart';

import 'splash/view_model/splash_view_model/splash_provider.dart';

abstract final class OnboardingProviders {
  static final splashProvider =
      StateNotifierProvider.autoDispose<SplashProvider, SplashState>((ref) {
    return SplashProvider();
  });
}
