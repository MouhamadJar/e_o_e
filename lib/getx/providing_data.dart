import 'package:e_o_e/network/online/end_points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxProvider extends GetConnect {
  String url = 'http://37.44.247.50:8001';

  Future<dynamic> getProfile({
    required String token,
  }) async {
    final response = await get(
      url + GETPROFILE,
      headers: {
        "Authorization": token,
      },
    );
    if(response.status.hasError){
      return Future.error(response.statusText!);
    }else{
      return response..body;
    }
  }
}
