import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemeData {
  static ThemeData myTheme() {
    // Đặt màu nền cho status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff1b1f3c), // Màu giống UserInfoBar
      ),
    );

    return ThemeData(
      fontFamily: "opensans",
      brightness: Brightness.dark,
      primaryColor: const Color(0xff161426),
      scaffoldBackgroundColor: Colors.transparent, // Nền trong suốt
      cardColor: Colors.transparent, // Nền Card trong suốt
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff1b1f3c), // Màu giống UserInfoBar
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
          backgroundColor: Colors.transparent, // Đảm bảo không có nền
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff74d9fd), width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff1b1f3c), width: 2),
        ),
        labelStyle: TextStyle(color: Colors.white70),
        hintStyle: TextStyle(color: Colors.grey),
        suffixIconColor: Color(0xff74d9fd),
        prefixIconColor: Color(0xff538fce),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: Color(0xff74d9fd),
        unselectedLabelStyle: TextStyle(
          color: Color(0xff74d9fd),
          fontSize: 16,
          fontWeight: FontWeight.w700,
          shadows: [Shadow(blurRadius: 16, color: Color(0xff74d9fd))],
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xff74d9fd)),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(5),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          shadowColor: WidgetStateProperty.all(
            const Color(0xff74d9fd).withOpacity(0.5),
          ),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          ),
        ),
      ),
      splashColor: const Color(0xff1b1f3c).withOpacity(0.5),
      highlightColor: Colors.transparent,
    );
  }
}
