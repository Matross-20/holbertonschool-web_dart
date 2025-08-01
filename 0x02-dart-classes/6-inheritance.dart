import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  late String user_password;

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
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  @override
  String toString() {
    bool passwordValid = super.isValid();
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: $passwordValid)';
  }
}