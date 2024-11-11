class Ussers {
  int? id;
  final String username;
  final String email;
  final String phone;
  final String password;
  String? conformpassword;

  Ussers(
      {this.id,
      required this.username,
      required this.email,
      required this.phone,
      required this.password,
      this.conformpassword});

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "email": email,
      "phone": phone,
      'password': password,
    };
  }
}
