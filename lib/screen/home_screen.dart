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
          // Ảnh nền SVG bao phủ toàn màn hình
          SvgPicture.asset(
            'assets/svg/screenbg_compass_home.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Column(
              children: [
                const UserInfoBar(), // Thanh trạng thái người dùng
                const SizedBox(height: 16), // Khoảng cách giữa các phần
                // GridView hiển thị các tùy chọn
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        compassE('La bàn Đông tứ mệnh'),
                        compassW('La bàn Tây tứ mệnh'),
                        compassNomal('La bàn cơ bản'),
                        compass24('La bàn 24 sơn hướng'),
                        compassOld('La bàn bát trạch theo tuổi'),
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
