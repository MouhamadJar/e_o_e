import 'package:e_o_e/getx/data_controller.dart';
import 'package:get/get.dart';

class ExamController extends GetxController{
  var isPurchase = 0.obs ;
  void Purchased () => isPurchase++;
}

class DataBinding extends Bindings  {
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }
}