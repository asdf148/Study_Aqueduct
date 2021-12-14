import 'package:aqueduct/aqueduct.dart';

class SignUp extends Serializable{
  String name;
  String email;
  int age;
  String password;

  @override
  void readFromMap(Map<String, dynamic> map) {
    name = map['name'] as String;
    email = map['email'] as String;
    age = map['age'] as int;
    password = map['passowrd'] as String;
  }

  @override
  Map<String, dynamic> asMap() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'passowrd': password
    };
  }
}