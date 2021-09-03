import 'package:sembast/sembast.dart';
import 'package:wanikani_flutter/core/utils/filters/custom_filter.dart';

typedef _DateTimeMatcher = bool Function(DateTime a, DateTime b);

class DateTimeFilter implements ICustomFilter {
  const DateTimeFilter._(this.field, this.value, this.matcher);

  DateTimeFilter.lt(String field, DateTime value) : this._(field, value, (a, b) => a.isBefore(b));

  DateTimeFilter.gt(String field, DateTime value) : this._(field, value, (a, b) => a.isAfter(b));

  DateTimeFilter.eq(String field, DateTime value)
      : this._(field, value, (a, b) => a.isAtSameMomentAs(b));

  final String field;
  final DateTime value;
  final _DateTimeMatcher matcher;

  @override
  bool call(RecordSnapshot record) {
    final dt = DateTime.tryParse(record[field] as String? ?? '');
    return dt != null && matcher(value, dt);
  }
}
