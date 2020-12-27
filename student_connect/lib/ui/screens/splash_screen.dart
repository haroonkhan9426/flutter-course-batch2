import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/ui/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      print('After 2 sec delay');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()),
          (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 0),

              /// CSE Connect Logo Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Logo Icon
                  Image(
                    image: AssetImage('assets/images/connect_logo.png'),
                    height: 88,
                    width: 88,
                    fit: BoxFit.contain,
                  ),

                  /// Column of text Widgets
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CSE', style: boldBlueTextStyle),
                      Text(
                        'Connect.',
                        style: regularBlackTextStyle,
                      ),
                    ],
                  )
                ],
              ),

              /// Powered by option
              Column(
                children: [
                  Text('Powerd by'),
                  Image(
                    height: 55,
                    width: 134,
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/antonx_logo.png'),
                  ),
                  SizedBox(height: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
