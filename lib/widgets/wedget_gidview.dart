// import 'package:flutter/material.dart';

// Widget compassE(String title) {
//   return _buildCard(title);
// }

// Widget compassW(String title) {
//   return _buildCard(title);
// }

// Widget compassNomal(String title) {
//   return _buildCard(title);
// }

// Widget compass24(String title) {
//   return _buildCard(title);
// }

// Widget compassOld(String title) {
//   return SizedBox(
//     height: 108,
//     width: double.infinity, // Chiếm toàn bộ chiều ngang màn hình
//     child: Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Text(
//             title,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// // Hàm dùng chung để tạo các Card widget
// Widget _buildCard(String title) {
//   return Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//     ),
//     elevation: 4,
//     child: Center(
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

Widget compassWidget(String imagePath, String title) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 4,
    child: SingleChildScrollView(
      // Thêm cuộn để tránh overflow
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.transparent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}

// Widget La bàn bát trạch chiếm toàn bộ chiều ngang
Widget compassOldFullWidth(String imagePath, String title) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Không chiếm không gian thừa
        children: [
          // Ảnh bên trên
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 120, // Chiều cao ảnh
              width: double.infinity,
            ),
          ),
          // Tiêu đề bên dưới ảnh
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.transparent, // Loại bỏ nền
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
