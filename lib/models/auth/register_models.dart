class RegisterModel {
  late String token, message;

  RegisterModel.fromJson({
    required Map<String, dynamic> json,
  }) {
    message = json['message'];
    token = json['token'];
  }
}
