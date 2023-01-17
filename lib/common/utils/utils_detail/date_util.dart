part of utils;

const String format = 'MM/dd/yyyy';
const String messageFormat = 'dd MMMM hh:mm a';
const String messageTodayFormat = 'hh:mm a';
const String date = 'HH:mm a';
const String dayMonth = 'MM-dd';

class DateUtil {
  DateUtil._();
  static String? dateTimeFromString({
    String? str,
  }) {
    try {
      if (!StringUtil.isEmpty(str)) {
        return DateFormat(format).format(DateTime.parse(str!));
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  static String? dateTimeFromWeekend({
    String? str,
  }) {
    try {
      if (!StringUtil.isEmpty(str)) {
        DateTime dateTime =
            DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(str!);
        Duration diff = DateTime.now().difference(dateTime);
        if (diff.inDays < 0) {
          return null;
        } else {
          return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
        }
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  static String? dateTimeFromHour({
    String? str,
  }) {
    try {
      if (!StringUtil.isEmpty(str)) {
        DateTime dateTime =
            DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(str!);
        return DateFormat('HH:mm').format(dateTime);
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  static String timeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    DateTime notificationDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateString);
    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);
    if (difference.inDays > 8) {
      return '${difference.inDays} days ago';
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return '';
    }
  }

  static String timeAgoDate(String dateString) {
    DateTime notificationDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateString);
    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);
    if (notificationDate.day == date2.day &&
        notificationDate.month == date2.month &&
        notificationDate.year == date2.year) {
      return S.current.today;
    } else if (difference.inDays == 1 &&
        notificationDate.month == date2.month &&
        notificationDate.year == date2.year) {
      return S.current.yesterday;
    } else {
      return convertDateTimeToString(notificationDate);
    }
  }

  static DateTime convertStringToDateTime(String? value) {
    return DateTime.tryParse(value ?? '') ?? DateTime.now();
  }

  static String convertDateTimeToString(DateTime? dateTime,
      {String? newFormat}) {
    if (dateTime == null) return '';
    return DateFormat(newFormat ?? format).format(dateTime.toLocal());
  }

  static String convertDateTimeToMsgString(DateTime? dateTime) {
    if (dateTime == null) return '';
    if (dateTime.isToday()) {
      return DateFormat(messageTodayFormat).format(dateTime.toLocal());
    } else {
      return DateFormat(messageFormat).format(dateTime.toLocal());
    }
  }

  static String getDateTimeKey(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat(messageFormat).format(dateTime.toLocal());
  }

  static String getTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat(date).format(dateTime.toLocal());
  }
}

extension DateHelpers on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }
}
