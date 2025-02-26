import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

String getDateAndTimeStringFormatted(DateTime dateTime) {
  tz.initializeTimeZones();
  tz.Location timeZone = tz.getLocation('Asia/Bangkok');

  dateTime = tz.TZDateTime.from(dateTime, timeZone);
  String formattedDate = DateFormat('d MMM yy, HH:mm น.', 'th').format(getThaiDateTime(dateTime));
  return formattedDate;
}

DateTime getThaiDateTime(DateTime dateTime) {
  int thaiYear = dateTime.year + 543;
  return DateTime(thaiYear, dateTime.month, dateTime.day, dateTime.hour, dateTime.minute);
}