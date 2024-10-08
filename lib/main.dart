import 'package:flutter/material.dart';
import 'package:homescreen_compassapp/theme/theme_data.dart';

void main(List<String> args) {
  runApp(const AppCompass());
}

class AppCompass extends StatelessWidget {
  const AppCompass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.myTheme(),
      home: const HomeScreen(),
    );
  }
}
