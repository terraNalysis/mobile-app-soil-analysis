import 'package:intl/intl.dart';

class MoneyFormatter {
  static String formatMoney({required double amount}) {
    return NumberFormat.currency(locale: 'fil_PH', symbol: '₱ ').format(amount);
  }
}
