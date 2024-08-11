import 'package:intl/intl.dart';

class NewsHelper {
  static String formatDate(String date) {
    // Parse the ISO 8601 date-time string to DateTime object
    DateTime parsedDate = DateTime.parse(date);

    // Convert from UTC to local time
    DateTime localDate = parsedDate.toLocal();

    // Format the DateTime object
    String formattedDateTime =
        DateFormat('dd/MM/yyyy • HH:mm').format(localDate);
    return formattedDateTime;
  }
}
