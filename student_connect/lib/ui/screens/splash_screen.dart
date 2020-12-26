import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/text_styles.dart';

class SplashScreen extends StatelessWidget {
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
