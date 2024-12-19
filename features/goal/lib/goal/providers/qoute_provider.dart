import 'package:core_provider/core_provider.dart';
import 'package:core_utils/finacial_qoutes/financial_qoutes.dart';
import 'package:flutter/foundation.dart';

@immutable
final class Qoute {
  const Qoute({required this.qoute});
  final String qoute;
}

final class QouteProvider extends StateNotifier<Qoute> {
  QouteProvider() : super(Qoute(qoute: FinancialQoutes.getRandomQuote()));

  void onUpdateQoute() {
    state = Qoute(qoute: FinancialQoutes.getRandomQuote());
  }
}
