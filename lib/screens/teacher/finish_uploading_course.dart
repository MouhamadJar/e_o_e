import 'dart:io';
import 'package:dio/dio.dart' as DIO;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/getx/upload_video_controller.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants.dart';

class FinishUploadingCourse extends StatefulWidget {
  @override
  State<FinishUploadingCourse> createState() => _FinishUploadingCourseState();
}

class _FinishUploadingCourseState extends State<FinishUploadingCourse> {
  var courseNameController = TextEditingController();
  var courseSubtitleController = TextEditingController();
  var courseDescriptionController = TextEditingController();
  var coursePriceController = TextEditingController();
  bool uploading = false;
  String selectedParentCategory = ' select ';
  String selectedParentCategoryId = ' select ';
  File imageCourse = File('');
  File coursePromotionalVideo = File('');

  var controller = Get.put(UploadVideoController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(width * .02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "course name  :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Add course name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      controller: courseNameController,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "course description  :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Add course description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      controller: courseDescriptionController,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "select category  :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .6,
                    child: AwesomeDropDown(
                      dropDownList: categories,
                      selectedItem: selectedParentCategory,
                      onDropDownItemClick: (value) {
                        setState(() {
                          selectedParentCategory = value;
                          selectedParentCategoryId =
                              categoriesIds[value].toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "course Image :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await ImagePicker()
                          .pickImage(source: ImageSource.gallery)
                          .then((value) {
                        imageCourse = File(value!.path);
                        messageToast(
                            msg: value.name + 'picked',
                            color: Colors.greenAccent);
                      }).catchError((onError) {
                        messageToast(msg: 'cancelled', color: Colors.redAccent);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              offset: const Offset(0, 5),
                            ),
                          ]),
                      margin: EdgeInsets.symmetric(horizontal: width * .07),
                      width: width * .5,
                      height: height * .05,
                      child: const Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text("upload Image"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "promo video :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await ImagePicker()
                          .pickVideo(source: ImageSource.gallery)
                          .then((value) {
                        coursePromotionalVideo = File(value!.path);
                        messageToast(
                            msg: value.name + 'picked',
                            color: Colors.greenAccent);
                      }).catchError((onError) {
                        messageToast(msg: 'cancelled', color: Colors.redAccent);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              offset: const Offset(0, 5),
                            ),
                          ]),
                      margin: EdgeInsets.symmetric(horizontal: width * .07),
                      width: width * .5,
                      height: height * .05,
                      child: const Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text("upload video"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * .02),
                    width: width * .25,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "course price  :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Add course price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      controller: coursePriceController,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async{
                  setState(() {
                    uploading = true;
                  });
                  DioHelper.dio.post(
                      '/course_managment/',
                      data: DIO.FormData.fromMap({
                        'course_name' : courseNameController.text.toString(),
                        'course_description' : courseDescriptionController.text.toString(),
                        'course_category' : selectedParentCategoryId.toString(),
                        'course_level' : 'hard',
                        'course_image' : await  DIO.MultipartFile.fromFile(imageCourse.path),
                        'course_promotional_video' : await  DIO.MultipartFile.fromFile(coursePromotionalVideo.path),
                        'course_requirements' : ['requirements'],
                        'course_learning_goals' : ['ggfnfgkm'],
                        'course_sections' : controller.sectionIds,
                        'course_message' : 'hmmmmmmmmmmmmmmmmmmmmmmmggffffffffffffffnfgnfgnsfgnfgnfsgndavadafdfafvddbnkld',
                        'course_language' : 'English',
                        'course_subtitle' : courseSubtitleController.text.toString(),
                        'course_price' : int.parse(coursePriceController.text.toString()),
                        'currency' : 'USD',
                      }),
                      options: DIO.Options(headers: {
                        'Authorization': token,
                      }),
                      onSendProgress: (sentBytes,totalBytes){
                        controller.setProgress((sentBytes / totalBytes * 100) as double);
                      }
                  ).then((value) {
                    uploading = false;
                    messageToast(msg: 'Uploaded successfully', color: Colors.greenAccent);
                    controller.setProgress(0.0);
                    print('vds\n');
                    print(value.data.toString());
                  }).catchError((onError){
                    setState(() {
                      messageToast(msg: 'error while uploading', color: Colors.redAccent);
                      print(onError.toString());
                      controller.setProgress(0.0);
                      uploading = false;
                    });
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: GetX<UploadVideoController>(
                      init: UploadVideoController(),
                      builder: (controller) {
                        int x = controller.getProgress().toInt();
                    return Text(
                      uploading
                          ? x.toString() +
                              '% done'
                          : 'Upload now',
                      style: const TextStyle(color: Colors.white),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
