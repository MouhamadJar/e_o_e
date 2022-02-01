import 'dart:ffi';

import 'package:e_o_e/models/auth/login_models.dart';

class Instructor {
  late Double id,
      total_students,
      total_balance,
      total_rate,
      badges,
      age,
      courses_count;
  late String bio,
      profile_image,
      education,
      facebook_link,
      job_role,
      phone_number,
      website_role;
  late USERMODEL user;
  late List<Certificate> certificate;
  late List<Rating> ratings;

  Instructor.fromJson({
    required Map<String, dynamic> json,
  }) {
    id = json['id'];
    total_students = json['total_students'];
    total_rate = json['total_rate'];
    badges = json['badges'];
    age = json['age'];
    courses_count = json['courses_count'];
    bio = json['bio'];
    profile_image = json['profile_image'];
    education = json['education'];
    facebook_link = json['facebook_link'];
    job_role = json['job_role'];
    phone_number = json['phone_number'];
    website_role = json['website_role'];
    user = USERMODEL.fromJson(json: json);
    json['certificates'].forEach((element) {
      certificate.add(element);
    });
    json['certificates'].forEach((element) {
      ratings.add(element);
    });
  }
}

class Certificate {
  late Double id;
  late String certificate_description, certificate_date, certificate_file;

  Certificate.fromJson({
    required Map<String, dynamic> json,
  }) {
    id = json['id'];
    certificate_description = json['certificate_description'];
    certificate_date = json['certificate_date'];
    certificate_file = json['certificate_file'];
  }
}

class Rating {
  late String rating_id, rating_content, created_at;
  late Double rating_value;
  late Instructor instructor;

  Rating.fromJson({
    required Map<String, dynamic> json,
  }) {
    rating_id = json['rating_id'];
    rating_content = json['rating_content'];
    created_at = json['created_at'];
    rating_value = json['rating_value'];
    instructor = Instructor.fromJson(json: json['instructor']);
  }
}
