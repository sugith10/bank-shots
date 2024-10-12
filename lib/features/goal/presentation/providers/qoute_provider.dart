import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/util/financial_qoutes.dart';

@immutable
final class Qoute {
  final String qoute;

  const Qoute({required this.qoute});
}

final class QouteProvider extends StateNotifier<Qoute> {
  QouteProvider() : super(Qoute(qoute: FinancialQoutes.getRandomQuote()));

  void onUpdateQoute() {
    state = Qoute(qoute: FinancialQoutes.getRandomQuote());
  }
}
