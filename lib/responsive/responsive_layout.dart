// screen_size.dart
import 'package:flutter/widgets.dart';

class ScreenSize {
  final double width;
  final double height;

  ScreenSize(BuildContext context)
      : width = MediaQuery.of(context).size.width,
        height = MediaQuery.of(context).size.height;
}
