import 'package:flutter/material.dart';
import 'package:student_connect/core/models/museum.dart';
import 'package:student_connect/core/services/custom_database_services.dart';
import 'package:student_connect/core/services/firebase_database_services.dart';
import 'package:student_connect/ui/musuem_screens/custom_widgets/custom_text_field.dart';

class AddMuseumScreen extends StatefulWidget {
  @override
  _AddMuseumScreenState createState() => _AddMuseumScreenState();
}

class _AddMuseumScreenState extends State<AddMuseumScreen> {
  final _formKey = GlobalKey<FormState>();
  Museum museum = Museum();
  bool showProgressHud = false;
  final _dbService = CustomDatabaseServices();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(20, 150, 30, 50),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Login message
                  Text(
                    'Add Museum',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),

                  /// Name TextField
                  CustomTextField(
                    label: 'Name',
                    onChange: (val) {
                      museum.name = val;
                    },
                    validator: (String val) {},
                  ),
                  SizedBox(height: 30),

                  /// Password TextField
                  CustomTextField(
                    label: 'Address',
                    onChange: (val) {
                      museum.address = val;
                    },
                    validator: (String val) {},
                  ),
                  SizedBox(height: 20),

                  CustomTextField(
                    label: 'Img Url',
                    onChange: (val) {
                      museum.imgUrl = val;
                    },
                    validator: (String val) {},
                  ),

                  SizedBox(height: 20),

                  /// Forgot password text link
                  Spacer(),

                  /// Login Button
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'ADD',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    onPressed: () async {
                      _dbService.addMuseum(museum);
//                      setState(() {
//                        showProgressHud = true;
//                      });
//                      await CustomDatabaseServices().addMuseum(museum);
//                      Provider.of<HomeProvider>(context, listen: false)
//                          .addMuseum(museum);
//                      setState(() {
//                        showProgressHud = false;
//                      });
                      Navigator.pop(context);
                      print('Login Button Pressed');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
