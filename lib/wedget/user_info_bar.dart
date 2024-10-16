import 'package:flutter/material.dart';

class UserInfoBar extends StatefulWidget {
  const UserInfoBar({super.key});

  @override
  State<UserInfoBar> createState() => _UserInfoBarState();
}

class _UserInfoBarState extends State<UserInfoBar> {
  String _gender = 'Nam'; // Giá trị mặc định
  final TextEditingController _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1b1f3c), // Màu nền của status bar
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildGenderSelection(), // Widget chọn giới tính
          _buildYearOfBirthField(), // Widget nhập năm sinh
        ],
      ),
    );
  }

  // Widget chọn giới tính
  Widget _buildGenderSelection() {
    return Row(
      children: [
        _genderRadio('Nam'),
        const SizedBox(width: 8), // Khoảng cách giữa các radio
        _genderRadio('Nữ'),
      ],
    );
  }

  // Radio button cho giới tính
  Widget _genderRadio(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _gender,
          onChanged: (newValue) {
            setState(() {
              _gender = newValue!;
            });
          },
          activeColor: const Color(0xff74d9fd),
        ),
        Text(value, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  // Widget nhập năm sinh
  Widget _buildYearOfBirthField() {
    return SizedBox(
      width: 120,
      child: TextField(
        controller: _yearController,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Năm sinh',
          hintStyle: const TextStyle(color: Colors.white70),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Color(0xff74d9fd), width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        ),
        keyboardType: TextInputType.number,
        onSubmitted: (value) {
          print('Năm sinh: $value'); // Xử lý năm sinh
        },
      ),
    );
  }

  @override
  void dispose() {
    _yearController.dispose(); // Giải phóng tài nguyên
    super.dispose();
  }
}
