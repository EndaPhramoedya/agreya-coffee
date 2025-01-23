import 'package:intl/intl.dart';

class FormatHelper {
  static String currencyStringFormat({required String text}) {
    return NumberFormat.simpleCurrency(locale: 'id', decimalDigits: 0)
        .format(int.tryParse(text) ?? '0');
  }
}
