import 'dart:ffi';

import 'package:dio/dio.dart' ;
import 'package:e_o_e/getx/upload_video_controller.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:get/get.dart' as GETX;

import '../../constants.dart';

class DioHelper {
  static late Dio dio;
static var controller =GETX.Get.put(UploadVideoController());
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://37.44.247.50:8001',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    query,
  }) async {
    return await dio.post(
      url,
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> getData({
    required String url,
  }) async {
    return await dio.get(
      url,
    );
  }

  static Future<Response> addMoney({
    required Map<String, dynamic> formData,
    query,
  }) async {
    return await dio.post(
      ADD_MONEY,
      data: FormData.fromMap(formData),
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }

  static Future<Response> addComment({
    required String comment,
    required double ratingValue,
    required int instructorId,
    query,
  }) async {
    return await dio.post(
      ADDCOMMENT,
      data: {
        "rating_content" : comment,
        "rating_value" : ratingValue,
        "instructor_id" : instructorId,
      },
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }
  static Future<Response> uploadSection({
    required List<String> sectionVideos,
    required String sectionName,
    required String sectionArticles,
    query,
  }) async {
    return await dio.post(
      '/section_management/',
      data: {
        "section_name" : sectionName,
        "section_article" : sectionArticles,
        "section_videos" : sectionVideos,
      },
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }

  static Future<Response> uploadPhoto({
    required Map<String, dynamic> formData,
  }) async {
    return await dio.put(
      UPLOADIMAGE,
      data: FormData.fromMap(formData),
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }
  static Future<Response> uploadVideo({
    required Map<String, dynamic> formData,
  }) async {
    return await dio.post(
      UPLOADVIDEO,
      data: FormData.fromMap(formData),
      options: Options(headers: {
        'Authorization': token,
      }),
        onSendProgress: (sentBytes,totalBytes){
          controller.setProgress((sentBytes / totalBytes * 100) as double);
      }
    );
  }

  static Future<Response> uploadCourse({
    required Map<String, dynamic> formData,
  }) async {
    return await dio.post(
        '/course_managment/',
        data: FormData.fromMap(formData),
        options: Options(headers: {
          'Authorization': token,
        }),
        onSendProgress: (sentBytes,totalBytes){
          controller.setProgress((sentBytes / totalBytes * 100) as double);
        }
    );
  }

  static Future<Response> deleteAccount() async {
    return await dio.delete(
    DELETEACCOUNT,
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }

  static Future<Response> updateProfile({
    required Map<String, dynamic> data,
  })async{
    return await dio.put(
    UPDATEPROFILE,
    data : data,
      options: Options(headers: {
        'Authorization': token,
      }),
    );
  }
}
