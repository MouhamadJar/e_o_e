import 'package:get/get.dart';

class UploadVideoController extends GetxController{
       var progress = 0.0.obs;
       dynamic getProgress ()=> progress.value ;
       dynamic setProgress (x)=> progress.value = x;
       List<String> videoIds=[];
       List<String> sectionIds=[];
}