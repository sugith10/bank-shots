import 'package:core_provider/core_provider.dart';

import 'home/view_model/home_provider.dart';
import 'home/view_model/home_state.dart';

abstract final class HomeProvider {
  static final home = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(),
  );
}
