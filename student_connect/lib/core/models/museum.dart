class Museum {
  String id;
  String name;
  String address;
  String imgUrl;

  Museum({this.name, this.address, this.imgUrl, this.id});

  Museum.fromJson(json) {
    this.id = json['id'];
    this.name = json['name'];
    this.address = json['address'];
    this.imgUrl = json['imgUrl'];
  }

  toJson() {
    return {
      'name': this.name,
      'address': this.address,
      'imgUrl': this.imgUrl,
    };
  }
}
