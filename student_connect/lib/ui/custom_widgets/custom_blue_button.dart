import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';

class CustomBlueButton extends StatelessWidget {
  final text;

  CustomBlueButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9),
      height: 46,
      decoration: BoxDecoration(
          color: blueThemeColor,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
            BoxShadow(
                color: Color(0x663065D7),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(3, 5))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            '$text',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'assets/images/round_go_icon.png',
            height: 29,
            width: 29,
          ),
        ],
      ),
    );
  }
}
