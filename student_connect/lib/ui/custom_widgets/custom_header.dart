import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/text_styles.dart';

class CustomHeader extends StatelessWidget {
  final text;

  CustomHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// CSE Connect logo
        Image(
          image: AssetImage('assets/images/cse_connect_logo.png'),
          height: 45,
          width: 147,
          fit: BoxFit.contain,
        ),

        /// Screen name text
        Text(
          '$text',
          style: greyBoldTextStyle,
        )
      ],
    );
  }
}
