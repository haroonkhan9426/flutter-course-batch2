import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';

class ProfileTab extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileTab({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(icon, color: blueThemeColor),
          SizedBox(width: 16),
          Text('$text', style: userNameTextStyle.copyWith(color: Colors.black)),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
