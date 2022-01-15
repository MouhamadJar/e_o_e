class LoginModel {
  late String message, token;
  late instructor _instructor;

  LoginModel.fromJson({required Map<String, dynamic> json}) {
    message = json['message'];
    token = json['token'];
    _instructor = instructor.fromJson(json: json);
  }
}

class instructor {
  late int id;
  late String profile_image, website_role;
  late USERMODEL usermodel;

  instructor.fromJson({
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
