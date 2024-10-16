import 'package:flutter/material.dart';
import 'package:homescreen_compassapp/wedget/user_info_bar.dart';
import 'package:homescreen_compassapp/wedget/wedget_gidview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Đảm bảo nội dung không bị tràn vào khu vực status bar của hệ thống
        child: Column(
          children: [
            const UserInfoBar(),
            const SizedBox(
                height: 16), // Khoảng cách giữa status bar và GridView
            // GridView cho các tùy chọn
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
    );
  }
}
