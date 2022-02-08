import 'package:dio/dio.dart';
import 'package:e_o_e/network/online/end_points.dart';

import '../../constants.dart';

class DioHelper {
  static late Dio dio;

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
      options: Options(
        headers: {
          'Authorization' : token,
        }
      ),
    );
  }

  static Future<Response> uploadPhoto({
    required Map<String, dynamic> formData,
  }) async {
    return await dio.put(
      UPLOADIMAGE,
      data: FormData.fromMap(formData),
      options: Options(
          headers: {
            'Authorization' : token,
          }
      ),
    );
  }
}
