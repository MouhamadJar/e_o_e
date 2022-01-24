class LoginModel {
  late String message, token;
  late login_instructor instructor;

  LoginModel.fromJson({required Map<String, dynamic> json}) {
    message = json['message'];
    token = json['token'];
    instructor = login_instructor.fromJson(json: json);
  }
}

class login_instructor {
  late int id;
  late String profile_image, website_role;
  late USERMODEL usermodel;

  login_instructor.fromJson({
    required Map<String, dynamic> json,
  }) {
    profile_image = json['profile_image'];
    website_role = json['website_role'];
    id = json['id'];
    usermodel = USERMODEL.fromJson(json: json);
  }
}

class USERMODEL {
  late String username, email, first_name, last_name, date_joined;
  late int id;

  USERMODEL.fromJson({
    required Map<String, dynamic> json,
  }) {
    username = json['username'];
    email = json['email'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    date_joined = json['date_joined'];
    id = json['id'];
  }
}
