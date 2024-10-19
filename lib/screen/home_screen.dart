import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homescreen_compassapp/widgets/user_info_bar.dart';
import 'package:homescreen_compassapp/widgets/wedget_gidview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hiển thị ảnh nền SVG
          SvgPicture.asset(
            'assets/svg/screenbg_compass_home.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Column(
              children: [
                const UserInfoBar(),
                const SizedBox(height: 16),
                // Nội dung chính của màn hình
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Mục "La bàn bát trạch theo tuổi"
                        compassOldFullWidth(
                          'assets/images/old_compass.png',
                          'La bàn bát trạch theo tuổi',
                        ),
                        const SizedBox(height: 10),
                        // GridView cho các mục còn lại
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: [
                              compassWidget('assets/images/east_compass.png',
                                  'La bàn Đông tứ mệnh'),
                              compassWidget('assets/images/west_compass.png',
                                  'La bàn Tây tứ mệnh'),
                              compassWidget('assets/images/normal_compass.png',
                                  'La bàn cơ bản'),
                              compassWidget('assets/images/24_directions.png',
                                  'La bàn 24 sơn hướng'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
