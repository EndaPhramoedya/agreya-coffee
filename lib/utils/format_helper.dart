import 'package:intl/intl.dart';

class FormatHelper {
  static String currencyStringFormat({required String text, int addend = 1}) {
    final int textToInt = int.tryParse(text) ?? 0;
    final int multiply = textToInt * addend;
    return NumberFormat.simpleCurrency(locale: 'id', decimalDigits: 0)
        .format(multiply);
  }
}
