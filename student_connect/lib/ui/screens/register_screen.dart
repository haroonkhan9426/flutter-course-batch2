import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/ui/custom_widgets/custom_blue_button.dart';
import 'package:student_connect/ui/custom_widgets/custom_header.dart';
import 'package:student_connect/ui/custom_widgets/form_container.dart';
import 'package:student_connect/ui/screens/login_screen.dart';
import 'package:student_connect/ui/screens/profile_screen.dart';

class RegisterScreen extends StatelessWidget {
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
              CustomHeader('Register'),

              SizedBox(height: 66),

              /// login form
              FormContainer(
                child: Column(
                  children: [
                    /// Full Name
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Full Name',
                        hintText: 'First Last',
                      ),
                    ),

                    /// Father's Name
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Father's Name",
                        hintText: 'First Last',
                      ),
                    ),

                    /// phone
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Phone",
                        hintText: '+923243434****',
                      ),
                      keyboardType: TextInputType.phone,
                    ),

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

              SizedBox(height: 36),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Please note that you must use your official',
                    style: regularBlackTextStyle.copyWith(fontSize: 13),
                    children: [
                      TextSpan(
                          text: ' student email ',
                          style: regularBlackTextStyle.copyWith(
                              fontSize: 13, color: blueThemeColor)),
                      TextSpan(text: 'while registering.')
                    ]),
              ),
              Text(
                '  ',
                textAlign: TextAlign.center,
                style: regularBlackTextStyle.copyWith(fontSize: 13),
              ),

              SizedBox(height: 8),

              /// login button
              CustomBlueButton(
                  text: 'Register',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                    print('Register button pressed');
                  }),
              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: RichText(
                  text: TextSpan(
                      text: 'Don’t have an account?',
                      style: regularBlackTextStyle.copyWith(fontSize: 14),
                      children: [
                        TextSpan(
                          text: ' Log In',
                          style: boldBlueTextStyle.copyWith(fontSize: 14),
                        ),
                      ]),
                ),
              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Text(
//                    'Don’t have an account?',
//                    style: regularBlackTextStyle.copyWith(fontSize: 14),
//                  ),
//                  Text(
//                    'REGISTER',
//                    style:,
//                  ),
//                ],
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
