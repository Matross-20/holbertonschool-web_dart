import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password = '';

  User({
    required int id,
    required String name,
    required int age,
    required double height,
    required String user_password,
  }) : super(password: user_password) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
    this.user_password = user_password;
  }

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    super.password = user_password; // Sync with parent class
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${super.isValid()})';
  }
}
