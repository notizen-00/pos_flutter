import 'package:intl/intl.dart';

String formatRupiah(int amount) {
  final NumberFormat formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp. ');
  return formatter.format(amount);
}