import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/upload_course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';

class HomeTeacher extends StatelessWidget {
  const HomeTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(width*0.05),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){Get.to(const UploadCourse(),);},
                        child: Container(
                          margin: EdgeInsets.only(bottom: height*0.01),
                          width: width*0.4,
                          height: height*0.25,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF67D20),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: LayoutBuilder(
                              builder: (context,constrains) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.5,
                                      width:constrains.maxWidth*0.9 ,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:const DecorationImage(
                                            image: AssetImage("assets/2396832.png"),
                                          )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.25,
                                      width:constrains.maxWidth*0.8,
                                      //color : Colors.grey,
                                      child: const AutoSizeText(
                                        "Publish the course you want ",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 2000,
                                        ),
                                        maxLines: 2,
                                        maxFontSize: 18,
                                        minFontSize: 12,
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                        ),
                      ),
                      Container(
                        //color: Colors.red,
                        width: width*0.4,
                        height: height*.15,
                        child: const AutoSizeText(
                          kLorem + kLorem + kLorem,
                          maxFontSize: 18,
                          minFontSize: 12,
                          maxLines: 7,
                          style: TextStyle(
                            fontSize: 2020,

                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){Get.snackbar("", "coming soon . . .");},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: height*0.01),
                          width: width*0.4,
                          height: height*0.25,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC345DD),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: LayoutBuilder(
                              builder: (context,constrains) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.5,
                                      width:constrains.maxWidth*0.9 ,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:const DecorationImage(
                                            image: AssetImage("assets/5514.png"),
                                          )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.25,
                                      width:constrains.maxWidth*0.8,
                                      //color : Colors.grey,
                                      child: const AutoSizeText(
                                        "Join Us the Rooms Education ",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 2000,
                                        ),
                                        maxLines: 2,
                                        maxFontSize: 18,
                                        minFontSize: 12,
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          width: width*0.4,
                          height: height*.15,
                          child: const AutoSizeText(
                            kLorem + kLorem + kLorem,
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 7,
                            style: TextStyle(
                              fontSize: 2020,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){Get.snackbar("", "coming soon . . .");},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: height*0.01),
                          width: width*0.4,
                          height: height*0.25,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0E564E),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: LayoutBuilder(
                              builder: (context,constrains) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.5,
                                      width:constrains.maxWidth*0.9 ,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:const DecorationImage(
                                            image: AssetImage("assets/2075212.png"),
                                          )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.25,
                                      width:constrains.maxWidth*0.8,
                                      //color : Colors.grey,
                                      child: const AutoSizeText(
                                        "Publish the test you want ",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 2000,
                                        ),
                                        maxLines: 2,
                                        maxFontSize: 18,
                                        minFontSize: 12,
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          width: width*0.4,
                          height: height*.15,
                          child: const AutoSizeText(
                            kLorem + kLorem + kLorem,
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 7,
                            style: TextStyle(
                              fontSize: 2020,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){Get.snackbar("", "coming soon . . .");},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: height*0.01),
                          width: width*0.4,
                          height: height*0.25,
                          decoration: BoxDecoration(
                            color: const Color(0xFFCE0505),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: LayoutBuilder(
                              builder: (context,constrains) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.5,
                                      width:constrains.maxWidth*0.9 ,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:const DecorationImage(
                                            image: AssetImage("assets/6461.png"),
                                          )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: constrains.maxHeight*.1),
                                      height: constrains.maxHeight*.25,
                                      width:constrains.maxWidth*0.8,
                                      //color : Colors.grey,
                                      child: const AutoSizeText(
                                        "Select available dates for schedule regular meeting",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 2000,
                                        ),
                                        maxLines: 2,
                                        maxFontSize: 18,
                                        minFontSize: 12,
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          width: width*0.4,
                          height: height*.15,
                          child: const AutoSizeText(
                            kLorem + kLorem + kLorem,
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 7,
                            style: TextStyle(
                              fontSize: 2020,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
