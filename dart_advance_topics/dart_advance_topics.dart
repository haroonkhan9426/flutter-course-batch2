void main() {
  print('Running Dart Advance topics');

  var namesList = List<String>();

  /// Adding values to list at runtime
  namesList.add('name1');
  namesList.add('asbc');
  namesList.add('name2');
  namesList.addAll(['name3', 'nomi', 'name4', 'name5', 'jani']);

  ///List iteration

//  for(String name in namesList){
//    print(name);
//  }

//  namesList.forEach((name) {
//    print(name);
//  });

  /// Searching 'name'
//  namesList.forEach((name) {
//    if(name == 'name'){
//      print('name exists');
//    }
//  });

// if(namesList.contains('name1')){
//   print('name1 exists');
// }

  /// Filtering
//  var namesWith4Characters = namesList.where((name) => name.length > 4);
//
//  namesWith4Characters.forEach((e) {
//    print(e);
//  });

//  /// Mapping
//  List<Name> listOfNamesObjects;
//  namesList.forEach((e) {
//    listOfNamesObjects.add(Name(e));
//  });

//  List<Name> listOfNamesObjects =
//      namesList.map<Name>((name) => Name(name)).toList();
//
//  listOfNamesObjects.forEach((name) => print(name.text));

//  print('NamesList Size: ${namesList.length}');
}

customPrint(val) => print(val);

class Name {
  String text;

  Name(this.text);
}
