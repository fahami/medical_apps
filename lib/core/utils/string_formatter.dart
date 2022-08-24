import 'package:intl/intl.dart';

String simpleIDR(num number) =>
    NumberFormat.simpleCurrency(decimalDigits: 0).format(number);
