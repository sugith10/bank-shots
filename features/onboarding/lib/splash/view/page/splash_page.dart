import 'package:core_navigation/core_navigation.dart';
import 'package:core_provider/core_provider.dart';
import 'package:flutter/material.dart';

import '../../../onboarding_providers.dart';
import '../widget/splash_logo_widget.dart';

final class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() {
      ref.read(OnboardingProviders.splashProvider.notifier).getNextScreen();
    });
    ref.listen(OnboardingProviders.splashProvider, (_, state) {
      if (state.route != null) {
        context.go(state.route!);
      }
    });
    return const Scaffold(
      body: Column(
        children: [
          Spacer(flex: 4),
          Center(
            child: SplashLogoWidget(),
          ),
          Spacer(flex: 3),
          Text(
            'For a better tomorrow\n'
            'Start saving today!',
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
