import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData myTheme() {
    return ThemeData(
      fontFamily: "opensans",
      brightness: Brightness.dark,
      primaryColor: const Color(0xff161426),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent, // Đặt nền trong suốt cho AppBar
        titleTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'opensans',
            fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
        bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
        headlineMedium: TextStyle(
            color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff74d9fd), width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1b1f3c), width: 2)),
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
            shadows: [Shadow(blurRadius: 16, color: Color(0xff74d9fd))]),
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
              const TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          shadowColor:
              WidgetStateProperty.all(const Color(0xff74d9fd).withOpacity(0.5)),
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

// // Đoạn code mẫu cho widget Scaffold để hiển thị ảnh nền SVG
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Hiển thị ảnh SVG làm nền
//           SvgPicture.asset(
//             'assets/svg/screenbg_compass_home.svg',
//             fit: BoxFit.cover, // Để ảnh bao phủ toàn màn hình
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           // Các widget khác sẽ được hiển thị trên ảnh nền
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Compass App',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Đoạn code mẫu cho AppBar để hiển thị ảnh nền SVG trong AppBar
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text('Compass App'),
//       flexibleSpace: Stack(
//         children: [
//           SvgPicture.asset(
//             'assets/svg/screenbg_compass_home.svg',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.3), // Hiệu ứng mờ cho ảnh nền
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56.0);
// }
