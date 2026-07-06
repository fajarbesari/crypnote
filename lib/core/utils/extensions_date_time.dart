import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get formattedDate => DateFormat('EEEE, dd/MM/yyyy').format(this);
  String get formattedDateMonth => DateFormat("EEEE, d MMMM yyyy").format(this);

  String get formattedTime => DateFormat('HH:mm:ss a').format(this);

  String get formattedDayTime {
    final dayTime = DateFormat('HH:mm:ss a').format(this);

    if (dayTime.contains('AM')) return 'Morning';

    return 'Night';
  }
}
