import 'dart:ffi';

import 'package:e_o_e/models/auth/login_models.dart';
import 'package:flutter/foundation.dart';

class ProfileModel {
  late dynamic id,
      totalStudents,
      totalBalance,
      totalRate,
      age,
      coursesCount;
  late dynamic bio,
      badges,
      profileImage,
      education,
      facebookLink,
      jobRole,
      phoneNumber,
      websiteRole;
  late USERMODEL user;
  late List<Certificate> certificate;
  late FavouriteCategory favouriteCategory;

  ProfileModel.fromJson({
    required Map<String, dynamic> json,
  }) {
    id = json['id'];
    totalStudents = json['total_students'];
    totalRate = json['total_rate'];
    badges = json['badges'];
    age = json['age'];
    coursesCount = json['courses_count'];
    bio = json['bio'];
    profileImage = json['profile_image'];
    education = json['education'];
    facebookLink = json['facebook_link'];
    jobRole = json['job_role'];
    phoneNumber = json['phone_number'];
    websiteRole = json['website_role'];
    user = USERMODEL.fromJson(json: json);
    favouriteCategory = FavouriteCategory.fromJson(json: json);
    json['certificates'].forEach((element) {
      certificate.add(element);
    });
    if (kDebugMode) {
      print("success");
    }
  }
}

class Certificate {
  late dynamic id;
  late String certificateDescription, certificateDate, certificateFile;

  Certificate.fromJson({
    required Map<String, dynamic> json,
  }) {
    id = json['id'];
    certificateDescription = json['certificate_description'];
    certificateDate = json['certificate_date'];
    certificateFile = json['certificate_file'];
  }
}

class FavouriteCategory {
  late String categoryId,
      categoryName,
      categoryImage,
      categoryDescription,
      parentCategory;
  late dynamic studentsCount;

  FavouriteCategory.fromJson({
    required Map<String, dynamic> json,
  }) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
    categoryDescription = json['category_description'];
    parentCategory = json['parent_category'];
    studentsCount = json['students_count'];
  }
}
