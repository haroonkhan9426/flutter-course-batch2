import 'package:flutter/material.dart';
import 'package:student_connect/core/constants/colors.dart';
import 'package:student_connect/core/constants/text_styles.dart';
import 'package:student_connect/ui/custom_widgets/profile_tab.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueThemeColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Profile Text
              Text(
                'Profile',
                style: boldWhiteTextStyle,
              ),

              SizedBox(height: 10),

              /// User Info
              Row(
                children: [
                  /// Profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage('assets/images/hamza.jpg'),
                      height: 69,
                      width: 69,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 26),

                  /// Column of username and email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hamza Ali Abbasi',
                        style: userNameTextStyle,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'hamza@manamayal.com',
                        style: userNameTextStyle.copyWith(
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 29),

              /// Tabs
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 53),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileTab(
                        icon: Icons.add_location,
                        text: 'Manage Address',
                      ),
                      Divider(thickness: 1),
                      ProfileTab(
                        icon: Icons.filter_frames,
                        text: 'Update Information',
                      ),
                      Divider(thickness: 1),
                      ProfileTab(
                        icon: Icons.star_half,
                        text: 'Manage Address',
                      ),
                      Divider(thickness: 1),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                        },
                        child: Text(
                          'Log Out',
                          style:
                              userNameTextStyle.copyWith(color: blueThemeColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
