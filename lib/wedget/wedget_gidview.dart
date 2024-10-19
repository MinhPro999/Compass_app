import 'package:flutter/material.dart';

Widget compassE(String title) {
  return _buildCard(title);
}

Widget compassW(String title) {
  return _buildCard(title);
}

Widget compassNomal(String title) {
  return _buildCard(title);
}

Widget compass24(String title) {
  return _buildCard(title);
}

Widget compassOld(String title) {
  return SizedBox(
    width: double.infinity, // Chiếm toàn bộ chiều ngang màn hình
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

// Hàm dùng chung để tạo các Card widget
Widget _buildCard(String title) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 4,
    child: Center(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
