void main() async {

  Map<String, dynamic> studentInfoInJson = {
    "name": "Haroon",
    "phone": "0323423423423",
    "address": {
      "house#": 1,
      "street#": 6,
      "phase": 5,
      "Society": "Hayatabad Peshawar",
      "nested": {
        'dualNest': 'Test Value',
      }
    }
  };

  final name = studentInfoInJson['name'];
  final houseNo = studentInfoInJson['address']['house#'];
  final dualNesteValue = studentInfoInJson['address']['nested']['dualNest'];

  print('Name: $name');
  print('House#: $houseNo');
  print('dual nest value#: $dualNesteValue');

//  print('AntonX flutter course');
//  final val = await getDataFromDb();
//  print(val);
}

/// Synchronous
String testString() {
  return 'Hello world';
}

/// Asynchronous Function
Future<String> getDataFromDb() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello world from database';
}

/// Functions:
/// 1) Synchronous function: Direct return
/// 2) Asynchronous functions: Return something in the future
