import 'dart:convert';

import 'package:e_o_e/constants.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:http/http.dart' as http;

const String baseURL = "http://37.44.247.50:8001";

Future<http.Response> login({
  required String username,
  required String password,
}) async {
  String url = '$baseURL/login_instructor/';
  http.Response _response = await http.post(
    Uri.parse(url),
    body: {
      "username": username,
      "password": password,
    },
  );
  return _response;
}

Future<http.Response> signup({
  required String first_name,
  required String last_name,
  required String username,
  required String email,
  required String number,
  required String password,
}) async {
  String url = '$baseURL/register_instructor/';
  http.Response _response = await http.post(
    Uri.parse(url),
    body: {
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "password": password,
      "email": email,
      "phone_number": number,
    },
  );
  return _response;
}

Future<http.Response> RestPasswordCheckEmail({
  required String email,
}) async {
  String url = '$baseURL/reset_password/';
  http.Response response = await http.post(
    Uri.parse(url),
    body: {
      "email": email,
    },
  );
  return response;
}

Future<http.Response> RestPasswordCheckCode({
  required String code_id,
  required String sent_code,
}) async {
  String url = '$baseURL/check_code/';
  http.Response response = await http.post(
    Uri.parse(url),
    body: {
      "code_id": code_id,
      "sent_code": sent_code,
    },
  );
  return response;
}

Future<http.Response> RestPassword({
  required String token,
  required String newPassword,
}) async {
  String url = '$baseURL/reset_password/';
  http.Response response = await http.put(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
    body: {
      "new_password": newPassword,
    },
  );
  return response;
}

Future<Map<String, dynamic>> getProfile({
  required String token,
}) async {
  String url = baseURL + GETPROFILE;
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
  );
  return json.decode(response.body);
}

Future<dynamic> cartItem() async {
  String url = '$baseURL/cart_manager/';
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
  );
  return jsonDecode(response.body);
}

Future<http.Response> addToCart({
  required String token,
  required String course_id,
}) async {
  String url = '$baseURL/cart_manager/';
  http.Response response = await http.post(Uri.parse(url), headers: {
    "Authorization": token,
  }, body: {
    "course_id": course_id,
  });
  return response;
}

Future<http.Response> removeFromCart({
  required String token,
  required String course_id,
}) async {
  String url = '$baseURL/cart_manager/';
  http.Response response = await http.delete(Uri.parse(url), headers: {
    "Authorization": token,
  }, body: {
    "course_id": course_id,
  });
  return response;
}

Future<dynamic> favouriteItem({
  required String token,
}) async {
  String url = '$baseURL/manage_wishlist/';
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
  );
  return jsonDecode(response.body);
}

Future<http.Response> addToFavourite({
  required String token,
  required String course_id,
}) async {
  String url = '$baseURL/manage_wishlist/';
  http.Response response = await http.post(Uri.parse(url), headers: {
    "Authorization": token,
  }, body: {
    "course_id": course_id,
  });
  return response;
}

Future<http.Response> removeFromFavourite({
  required String token,
  required String course_id,
}) async {
  String url = '$baseURL/manage_wishlist/';
  http.Response response = await http.delete(Uri.parse(url), headers: {
    "Authorization": token,
  }, body: {
    "course_id": course_id,
  });
  return response;
}

Future<dynamic> getAllCategories() async {
  String url = '$baseURL/pcats_and_cats';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<dynamic> getCoursesByRating() async {
  String url = '$baseURL/course_by_top_rating/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return json.decode(response.body);
}

Future<dynamic> getCoursesBySellingTime() async {
  String url = '$baseURL/mobile_courses_by_selling_times/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<dynamic> getInstructorsByRating() async {
  String url = '$baseURL/instructors_by_rating/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<dynamic> getMyCourses({
  required String token,
}) async {
  String url = '$baseURL/my_learnings/';
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
  );
  return jsonDecode(response.body);
}

Future<dynamic> getCoursesInformation({
  required String id,
}) async {
  String url = '$baseURL/course_details/$id/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<http.Response> getCoursesRating({
  required String id,
}) async {
  String url = '$baseURL/course_ratings/$id/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return response;
}

Future<Map<String, dynamic>> getNewestCourse() async {
  String url = '$baseURL/last_course/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<dynamic> search({
  required String data,
}) async {
  String url = '$baseURL/search_courses/$data';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<http.Response> myWallet({
  required String token,
}) async {
  String url = '$baseURL/wallet_manager/';
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
  );
  return response;
}

// Future<http.Response> addToWallet({
//   required String token,
//   required String money_amount,
//   required XFile check_image,
//   required String transaction_choice,
//   required String number,
//   required String region,
// }) async {
//   String url = '$baseURL/wallet_manager/';
//   Map<String, String> body = {
//     "money_amount": money_amount,
//     "transaction_choice": transaction_choice,
//     "number": number,
//     "region": region,
//   };
//   var request = http.MultipartRequest(
//     'POST',
//     Uri.parse("$baseURL/wallet_manager/"),
//   );
//   if (check_image != null) {
//     request.files.add(
//       await http.MultipartFile.fromPath('image', check_image.path),
//     );
//   }
//   request.fields.addAll(body);
//   request.headers.addAll({
//     "Authorization": token,
//   });
//   return await request.send();
// }

Future<http.Response> cutFromWallet({
  required String token,
  required String transaction_choice,
  required String money_to_cut,
  required String branch_id,
  required String payment_company_id,
  required String full_name,
  required String region,
  required String number,
}) async {
  String url = '$baseURL/wallet_manager/';
  http.Response response = await http.put(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
    body: {
      "transaction_choice": transaction_choice,
      "money_to_cut": money_to_cut,
      "payment_company_id": payment_company_id,
      "branch_id": branch_id,
      "full_name": full_name,
      "region": region,
      "number": number,
    },
  );
  return response;
}

Future<dynamic> getCompanies() async {
  String url = '$baseURL/all_p_comps/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<Map<String, dynamic>> getInstructorProfile({
  required int id,
}) async {
  String url = '$baseURL/instructor_profile/$id/';
  http.Response response = await http.get(
    Uri.parse(url),
  );
  return jsonDecode(response.body);
}

Future<http.Response> updateProfile({
  required String first_name,
  required String last_name,
  required String email,
  required String password,
  required String newPassword,
  required String age,
  required String education,
  required String favourite_category_id,
  required String job_role,
}) async {
  String url = '$BASEURL/update_account/';
  http.Response _response = await http.put(
    Uri.parse(url),
    headers: {
      "Authorization": token,
    },
    body: {
      "email": email,
      "password": password,
      "new_password": newPassword,
      "first_name": first_name,
      "last_name": last_name,
      "age": age,
      "education": education,
      "favourite_category_id": favourite_category_id,
      "job_role": job_role
    },
  );
  return _response;
}

Future<dynamic> like({
  required String ratingId,
}) async {
  String url = BASEURL + LIKE_DISLKIKE;
  http.Response response = await http.post(Uri.parse(url), body: {
    'rating_id': ratingId,
    'is_like': true,
  });
  return jsonDecode(response.body);
}

Future<dynamic> disLike({
  required String ratingId,
}) async {
  String url = BASEURL + LIKE_DISLKIKE;
  http.Response response = await http.post(Uri.parse(url), body: {
    'rating_id': ratingId,
    'is_like': false,
  });
  return jsonDecode(response.body);
}

Future<dynamic> getNotifications() async {
  String url = BASEURL + NOTIFICATION;
  http.Response response = await http.get(Uri.parse(url), headers: {
    'Authorization': token,
  });
  return jsonDecode(response.body);
}

Future<dynamic> deleteAccount() async {
  String url = BASEURL + DELETE_ACCOUNT;
  http.Response response = await http.delete(Uri.parse(url), headers: {
    'Authorization': token,
  });
  return jsonDecode(response.body);
}

Future<dynamic> cutOffSyriatellCash({
  required String moneyAmount,
  required String number,
}) async {
  String url = BASEURL + SYRIATELL;
  http.Response response = await http.put(
      Uri.parse(url),
      headers: {
    'Authorization': token,
  },
    body: {
      "transaction_choice":"cut_off_money",
      "money_to_cut" : moneyAmount,
      "region" : "Damascus",
      "number": number,
    }
  );
  return jsonDecode(response.body);
}

Future<dynamic> cutOffCompany({
  required String moneyAmount,
  required String number,
  required String fullName,
  required String region,
  required String companyId,
  required String branchId,
}) async {
  String url = BASEURL + SYRIATELL;
  http.Response response = await http.put(
      Uri.parse(url),
      headers: {
        'Authorization': token,
      },
      body: {
        "transaction_choice":"cut_off_money",
        "money_to_cut" : moneyAmount,
        "region" : region,
        "number": number,
        "full_name" : fullName,
        "payment_company_id" : companyId,
        "branch_id" : branchId,
      }
  );
  return jsonDecode(response.body);
}
