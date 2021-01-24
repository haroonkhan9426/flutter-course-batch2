import 'package:flutter/material.dart';

import 'home/home_screen.dart';
import 'login_screen.dart';

class MuseumSplash extends StatefulWidget {
  @override
  _MuseumSplashState createState() => _MuseumSplashState();
}

class _MuseumSplashState extends State<MuseumSplash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
//      if (AuthService().isLogin()) {
//        Navigator.pushAndRemoveUntil(
//            context,
//            MaterialPageRoute(builder: (context) => HomeScreen()),
//            (route) => false);
//      } else {
//        Navigator.pushAndRemoveUntil(
//            context,
//            MaterialPageRoute(builder: (context) => LoginScreen()),
//            (route) => false);
//      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('@splashScreen');
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
