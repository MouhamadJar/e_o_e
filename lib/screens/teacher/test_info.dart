import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../xd_categories1.dart';
import 'over_view.dart';

class TestInfo extends StatefulWidget {
  const TestInfo({
    Key? key,
    required this.width,
    required this.studentImage,
    required this.studentName,
    required this.time,
    required this.courseName,
    required this.part,
    required this.section,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final String studentImage,studentName,time,courseName,part;
  final int section;

  @override
  _TestInfoState createState() => _TestInfoState(width,height,studentImage,studentName,time,courseName,part,section);
}




class _TestInfoState extends State<TestInfo> {

  _TestInfoState(this.width, this.height, this.studentImage, this.studentName,
      this.time, this.courseName, this.part, this.section);

  final double width;
  final double height;
  final String studentImage,studentName,time,courseName,part;
  final int section;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(
                  width: width * 0.033,
                ),
                GestureDetector(
                  onTap : (){Get.off(XDInstructorCourses());},
                  child: SvgPicture.asset("assets/online-course (4).svg"),
                ),
                SizedBox(
                  width: width * 0.09,
                ),
                Image.asset("assets/Group 1107.png"),
                SizedBox(width: width * 0.13),
                GestureDetector(
                  onTap: (){Get.to(OverView(),);},
                  child: SvgPicture.asset("assets/file (3).svg"),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => XDCategories1()),
                    );
                  },
                  icon: SvgPicture.asset("assets/category (3).svg"),
                ),
              ],
            ),
            leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: SvgPicture.asset("assets/list (2).svg"),
                  );
                }
            ),
          ),
          body: Padding(
            padding:  EdgeInsets.all(width*.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height*0.13,
                  width: width*0.94,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width*.02),
                        height: height*0.13,
                        width: width*.27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/person.png"),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            )
                        ),

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: height*.04,
                                width: width*.15,
                                child: Center(
                                  child: AutoSizeText(
                                    widget.studentName ,
                                    style:const TextStyle(
                                      fontSize: 2021,
                                      fontFamily: kFontFamily,
                                    ),
                                    minFontSize: 12,
                                    maxFontSize: 16,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              SizedBox(width: width*.3),
                              Container(
                                height: height*.04,
                                width: width*.15,
                                child: Center(
                                  child: AutoSizeText(
                                    widget.time ,
                                    style:const TextStyle(
                                      fontSize: 2021,
                                      fontFamily: kFontFamily,
                                    ),
                                    minFontSize: 12,
                                    maxFontSize: 16,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                height: height*.04,
                                width: width*.23,
                                child: Center(
                                  child: AutoSizeText(
                                    widget.courseName,
                                    style:const TextStyle(
                                      fontSize: 2021,
                                      fontFamily: kFontFamily,
                                    ),
                                    minFontSize: 12,
                                    maxFontSize: 16,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              SizedBox(width: width*.03),
                              Container(
                                height: height*.04,
                                width: width*.13,
                                child: Center(
                                  child: AutoSizeText(
                                    "Section"+widget.section.toString(),
                                    style:const TextStyle(
                                      fontSize: 2021,
                                      fontFamily: kFontFamily,
                                    ),
                                    minFontSize: 12,
                                    maxFontSize: 16,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              SizedBox(width: width*.05),
                              Container(
                                height: height*.04,
                                width: width*.17,
                                //color: Colors.orangeAccent,
                                child: Center(
                                  child: Center(
                                    child: AutoSizeText(
                                      widget.part,
                                      style:const TextStyle(
                                        fontSize: 2021,
                                        fontFamily: kFontFamily,
                                      ),
                                      minFontSize: 12,
                                      maxFontSize: 16,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*0.03,bottom: height*0.03),
                  height: height*0.04,
                  width: width*0.45,
                  //color: Colors.grey,
                  child: const AutoSizeText(
                    "The Exam :",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 2021,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    maxFontSize: 24,
                    minFontSize: 12,
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }


}
