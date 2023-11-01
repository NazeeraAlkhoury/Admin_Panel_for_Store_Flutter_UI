import 'package:flutter/cupertino.dart';

extension MediaQueryValue on BuildContext {
  double get hieght => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}
