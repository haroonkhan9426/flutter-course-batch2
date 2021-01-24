import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:student_connect/core/models/museum.dart';
import 'package:student_connect/core/models/student.dart';

class FirebaseDatabaseServices {
  final _fireStore = FirebaseFirestore.instance;

//  getAccountRecord() {}

  createAccount(Student student, id) async {
    print('@DatabaseService/createAccount ');
    try {
      await _fireStore.collection('users').doc(id).set(student.toJson());
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  updateAccount() {}

  createTimeTable() {}

  getMuseumsData() async {
    print('@getMuseumsData');
    List<Museum> museumsList = [];
    final snapshots = await _fireStore.collection('museums').get();
    print('Museums fetched from Db: ${snapshots.docs.length}');
    for (final snapshot in snapshots.docs) {
      final json = snapshot.data();
      print(snapshot.data());
      museumsList.add(Museum.fromJson(json));
    }
    return museumsList;
  }

  addMuseum(Museum museum) {
    print('@addMuseum with Data => name: ${museum.name}');
    _fireStore.collection('museums').add(museum.toJson());
  }
}
