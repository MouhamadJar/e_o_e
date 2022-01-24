import 'package:e_o_e/getx/providing_data.dart';
import 'package:get/get.dart';
import '../constants.dart';

class DataController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    GetxProvider().getProfile(token: token).then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
