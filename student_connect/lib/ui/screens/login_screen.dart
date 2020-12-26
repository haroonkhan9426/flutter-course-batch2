import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/ui/custom_widgets/custom_blue_button.dart';
import 'package:student_connect/ui/custom_widgets/custom_header.dart';
import 'package:student_connect/ui/custom_widgets/form_container.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 50, 15, 0),
        child: Column(
          children: [
            /// header section
            CustomHeader('Log in'),

            SizedBox(height: 66),

            /// login form
            FormContainer(
              child: Column(
                children: [
                  /// Email TextField
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Email',
                      hintText: 'username@domain.com',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock_open),
                      labelText: 'Password',
                      hintText: 'username@domain.com',
                    ),
                  ),

                  /// Password textField
                ],
              ),
            ),

            SizedBox(height: 62),

            /// login button
            CustomBlueButton('Log In'),
            SizedBox(height: 20),

            /// register text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: regularBlackTextStyle.copyWith(fontSize: 14),
                ),
                Text(
                  'REGISTER',
                  style: boldBlueTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
