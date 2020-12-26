import 'package:flutter/material.dart';
import 'package:student_connect/ui/screens/login_screen.dart';
import 'package:student_connect/ui/screens/register_screen.dart';
import 'package:student_connect/ui/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Connect',
      home: RegisterScreen(),
    );
  }
}
