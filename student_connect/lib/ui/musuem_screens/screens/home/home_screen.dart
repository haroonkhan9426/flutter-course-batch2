import 'package:flutter/material.dart';
import 'package:student_connect/core/models/exhibition.dart';
import 'package:student_connect/core/models/museum.dart';
import 'package:student_connect/core/services/custom_database_services.dart';
import 'package:student_connect/core/services/firebase_database_services.dart';
import 'package:student_connect/ui/musuem_screens/custom_widgets/exhibition_tile.dart';

import '../../custom_widgets/museum_tile.dart';
import '../add_museum_screen.dart';
import '../login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _dbService = CustomDatabaseServices();
  List<Museum> museumsList = [];

//  List<Museum> filteredList = [];
  bool isGotData = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    museumsList = await _dbService.getMuseumsData();
    setState(() {
      isGotData = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddMuseumScreen()));
          },
        ),
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: SingleChildScrollView(
            primary: true,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Column(
                children: [
                  /// Header
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Icon(Icons.pin_drop),
                        Text('Peshawar'),
                        Icon(Icons.keyboard_arrow_down),
                        Spacer(),
                        Icon(Icons.map),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

//                  RaisedButton(
//                    child: Text('Logout'),
//                    onPressed: () async {
////                      await AuthService().logout();
//                      Navigator.pushAndRemoveUntil(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => LoginScreen()),
//                          (route) => false);
//                    },
//                  ),

                  /// Search TextField
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.only(left: 10),
                    height: 60,
                    width: MediaQuery.of(context).size.width - 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),

                  /// Horizontal list view of visited
//                  Center(
//                          child: CircularProgressIndicator(),
//                        )
                  Container(
                    height: 200,

                    /// Default ListView
                    child: isGotData
                        ? ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: museumsList.length,
                            itemBuilder: (context, index) =>
                                MuseumTile(museumsList[index]),
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),

                  SizedBox(height: 40),

                  /// Vertical list view of news & exhibitions
//                  !provider.gotExhibitionsData
//                      ? Center(
//                          child: CircularProgressIndicator(),
//                        )
//                      :
                  ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      ExhibitionTile(Exhibition(
                          date: '12/12/2021',
                          title: 'Food Festiv',
                          address: 'Namak Mandi Peshawar')),
                      ExhibitionTile(Exhibition(
                          date: '12/12/2021',
                          title: 'Food Festiv',
                          address: 'Namak Mandi Peshawar')),
                      ExhibitionTile(Exhibition(
                          date: '12/12/2021',
                          title: 'Food Festiv',
                          address: 'Namak Mandi Peshawar'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
