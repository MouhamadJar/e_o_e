import 'package:get/get.dart';

class ExamController extends GetxController{
  var isPurchase = 0.obs ;
  void Purchased () => isPurchase++;
}

