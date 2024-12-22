part of 'splash_provider.dart';

final class SplashState {
  const SplashState({this.route});
  final String? route;

  SplashState copyWith({String? route}) {
    return SplashState(
      route: route ?? this.route,
    );
  }
}
