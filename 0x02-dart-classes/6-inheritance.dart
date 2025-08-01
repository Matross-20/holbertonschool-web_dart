import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;

  // Property for user_password
  String user_password;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  })  : user_password = user_password,
        super(password: user_password);

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Named constructor to create a User from JSON
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        name = json['name'] ?? '',
        age = json['age'] ?? 0,
        height = json['height']?.toDouble() ?? 0.0,
        user_password = json['user_password'] ?? '',
        super(password: json['user_password'] ?? '');

  // Override toString method
  @override
String toString() {
  super.password = this.user_password;
  return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${super.isValid()})';
  }
}