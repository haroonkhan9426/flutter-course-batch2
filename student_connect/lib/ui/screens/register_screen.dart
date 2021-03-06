import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/core/models/student.dart';
import 'package:student_connect/core/services/auth_services.dart';
import 'package:student_connect/ui/custom_widgets/custom_blue_button.dart';
import 'package:student_connect/ui/custom_widgets/custom_header.dart';
import 'package:student_connect/ui/custom_widgets/form_container.dart';
import 'package:student_connect/ui/screens/login_screen.dart';
import 'package:student_connect/ui/screens/profile_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _authService = AuthService();
  Student student = Student();
  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 50, 15, 0),
          child: showProgress
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    /// header section
                    CustomHeader('Register'),

                    SizedBox(height: 66),

                    /// login form
                    Form(
                      key: _formKey,
                      child: FormContainer(
                        child: Column(
                          children: [
                            /// Full Name
                            TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "Full Name field connot be empty";
                                } else {
                                  null;
                                }
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person),
                                labelText: 'Full Name',
                                hintText: 'First Last',
                              ),
                              onChanged: (val) {
                                student.fullName = val;
                              },
                            ),

                            /// Father's Name
                            TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "Father Name field connot be empty";
                                } else {
                                  null;
                                }
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person),
                                labelText: "Father's Name",
                                hintText: 'First Last',
                              ),
                              onChanged: (val) {
                                student.fatherName = val;
                              },
                            ),

                            /// phone
                            TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.phone),
                                labelText: "Phone",
                                hintText: '+923243434****',
                              ),
                              keyboardType: TextInputType.phone,
                              onChanged: (val) {
                                student.phone = val;
                              },
                            ),

                            /// Email TextField
                            TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "Email field connot be empty";
                                } else {
                                  null;
                                }
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person),
                                labelText: 'Email',
                                hintText: 'username@domain.com',
                              ),
                              onChanged: (val) {
                                student.email = val;
                              },
                            ),
                            TextFormField(
                              validator: (val) {
//                                if (val.length < ) {
//                                  return "Password should be at least 6 characters";
//                                } else {
//                                  null;
//                                }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock_open),
                                labelText: 'Password',
                                hintText: 'username@domain.com',
                              ),
                              onChanged: (val) {
                                student.password = val;
                              },
                            ),

                            /// Password textField
                          ],
                        ),
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

                    /// Reigster button
                    CustomBlueButton(
                        text: 'Register',
                        onPressed: () async {
                          print('Register button pressed');
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              showProgress = true;
                            });
                            final authResponse =
                                await _authService.createAccount(student);
                            if (authResponse.success) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()));
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text('Failed'),
                                        content: Text(authResponse.message),
                                      ));
                            }

                            setState(() {
                              showProgress = false;
                            });
                          }
                        }),
                    SizedBox(height: 20),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
