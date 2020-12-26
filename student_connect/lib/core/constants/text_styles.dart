import 'package:flutter/material.dart';
import 'colors.dart';

final boldBlueTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 40,
  color: blueThemeColor,
  fontWeight: FontWeight.w700,
);

final regularBlackTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 40,
  color: Colors.black,
);

final greyBoldTextStyle = boldBlueTextStyle.copyWith(
  fontSize: 25,
  color: darkGreyColor,
);
