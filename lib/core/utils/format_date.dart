import 'package:intl/intl.dart';

String formatDateBydMMMYYYY(String dateString) {
  // Hapus karakter 'Z' di akhir string karena tidak diperlukan oleh DateTime.parse
  if (dateString.endsWith('Z')) {
    dateString = dateString.substring(0, dateString.length - 1);
  }
  DateTime dateTime = DateTime.parse(dateString);
  return DateFormat("d MMM, yyyy HH:mm").format(dateTime);
}