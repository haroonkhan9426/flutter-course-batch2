/// Data Models
class Student {
  String fullName;
  String fatherName;
  String phone;
  String email;
  String password;

  Student(
      {this.fullName, this.fatherName, this.phone, this.email, this.password});

  toJson() {
    return {
      'email': this.email,
      'fullName': this.fullName,
      'fatherName': this.fatherName,
      'phone': this.phone,
    };
  }
}
