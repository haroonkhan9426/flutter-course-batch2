import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:student_connect/core/constants/end_points.dart';
import 'package:student_connect/core/models/museum.dart';
import 'package:student_connect/core/models/student.dart';

class CustomDatabaseServices {
  final dio = Dio();

  getMuseumsData() async {
    print('@getMuseumsData');
    List<Museum> museumsList = [];
    final response = await dio.get('${EndPoints.baseUrl}${EndPoints.museums}');
    if (response.statusCode == 200) {
      print('${response.data}');
    }
    for (final json in response.data) {
      museumsList.add(Museum.fromJson(json));
    }
    return museumsList;
  }

  addMuseum(Museum museum) async {
    print('@addMuseum with Data => name: ${museum.name}');
    final response = await dio.post('${EndPoints.baseUrl}${EndPoints.museums}',
        data: museum.toJson());
    if (response.statusCode == 200) {
      print('Museum added');
    }
  }
}
