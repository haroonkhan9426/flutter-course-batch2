import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/core/services/auth_services.dart';
import 'package:student_connect/ui/custom_widgets/custom_blue_button.dart';
import 'package:student_connect/ui/custom_widgets/custom_header.dart';
import 'package:student_connect/ui/custom_widgets/form_container.dart';
import 'package:student_connect/ui/screens/profile_screen.dart';
import 'package:student_connect/ui/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  String email;
  String password;
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: SingleChildScrollView(
        child: Padding(
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
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_open),
                        labelText: 'Password',
                        hintText: 'username@domain.com',
                      ),
                      onChanged: (val) {
                        password = val;
                      },
                    ),

                    /// Password textField
                  ],
                ),
              ),

              SizedBox(height: 62),

              /// login button
              CustomBlueButton(
                text: 'Log In',
                onPressed: () async {
                  final authResponse = await authService.login(email, password);
                  if (authResponse.success) {
                    // Successful Login
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  } else {
                    print('Login failed');
                    // login failed
                  }
                  print('Login Button Pressed');
                },
              ),
              SizedBox(height: 20),

              /// register text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: regularBlackTextStyle.copyWith(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      'REGISTER',
                      style: boldBlueTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
