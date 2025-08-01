import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password = '';

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : super(password: user_password) {
    this.user_password = user_password;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: '', // You can update this later
    );
  }

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
  }

  @override
  String toString() {
    final pass = Password(password: this.user_password);

    return 'User(id: $id, name: $name, age: $age, height: $height, Password: ${pass.isValid()})';
  }
}
