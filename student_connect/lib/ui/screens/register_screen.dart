import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/ui/custom_widgets/custom_blue_button.dart';
import 'package:student_connect/ui/custom_widgets/custom_header.dart';
import 'package:student_connect/ui/custom_widgets/form_container.dart';

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

              Text(
                'Please note that you must use your official student email while registering.',
                textAlign: TextAlign.center,
                style: regularBlackTextStyle.copyWith(fontSize: 13),
              ),

              SizedBox(height: 8),

              /// login button
              CustomBlueButton('Register'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
