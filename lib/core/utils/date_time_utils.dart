import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String DD_MM_YYYY = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = DD_MM_YYYY,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

String formatUnixTimestamp(int unixTimestamp) {
  // Create a DateTime object from the Unix timestamp (in seconds)
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);

  // Format the DateTime object into a human-readable string
  String formattedTime = '${dateTime.day}/${dateTime.month}/${dateTime.year}, '
      '${_twoDigits(dateTime.hour)}:${_twoDigits(dateTime.minute)}:${_twoDigits(dateTime.second)}';

  return formattedTime;
}

String _twoDigits(int n) {
  if (n >= 10) {
    return '$n';
  }
  return '0$n';
}
