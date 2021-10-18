import 'package:intl/intl.dart';

class Currency {
  static rupiah(int jumlah) {
    var formatCurrency =
        new NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0);

    return formatCurrency.format(jumlah);
  }
}
