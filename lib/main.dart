import 'package:flutter/material.dart';
import 'package:yohire_ui/others/bottom_navigation.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      ScreenUtil.init(context); // Initialize screen dimensions
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: BottomNavigation(),
      );
    });
  }
}
