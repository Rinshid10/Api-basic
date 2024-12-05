class GetUser {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  GetUser({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
  });
  factory GetUser.fromJson(Map<String, dynamic> json) {
    return GetUser(
        id: json['id'] ?? 0,
        firstname: json['firstname'] ?? 'no data',
        lastname: json['lastname'] ?? 'no data',
        email: json['email'] ?? 'no data');
  }
}
