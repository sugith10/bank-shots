final class AmountFormatter {
  AmountFormatter._();

  static String addCountry(double amount) {
    return '\$${amount.toStringAsFixed(2)}';
  }
}
