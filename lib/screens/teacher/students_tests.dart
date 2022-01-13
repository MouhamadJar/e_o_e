import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/test_info.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../xd_categories1.dart';
import 'models/models.dart';
import 'over_view.dart';

class StudentsTests extends StatefulWidget {
  const StudentsTests({Key? key}) : super(key: key);

  @override
  State<StudentsTests> createState() => _StudentsTestsState();
}

class _StudentsTestsState extends State<StudentsTests> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;
    return Scaffold(
      appBar:  AppBar(
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
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(width*.03),
          child: Column(
            children: [
              Container(
                height: height*0.04,
                width: width*0.35,
                //color: Colors.grey,
                child:const Center(
                  child: AutoSizeText(
                    "Student tests",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 2021,
                      fontWeight: FontWeight.bold,
                    ),
                    maxFontSize: 24,
                    minFontSize: 12,
                    maxLines: 1,
                  ),
                ),
              ),
              Container(
                height: height*0.07,
                width: width*0.87,
                //color: Colors.grey,
                child: const AutoSizeText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 2021,
                  ),
                  maxFontSize: 16,
                  minFontSize: 12,
                  maxLines: 3,
                ),
              ),
              GestureDetector(
                onTap: (){Get.to(TestInfo(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,),);},
                child: Tests(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,
                ),
              ),
              GestureDetector(
                onTap: (){Get.to(TestInfo(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,
                ),);},
                child: Tests(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "09:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:2,
                ),
              ),
              GestureDetector(
                onTap: (){Get.to(TestInfo(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,
                ),);},
                child: Tests(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "07:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:1,
                ),
              ),
              GestureDetector(
                onTap: (){Get.to(TestInfo(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,
                ),);},
                child: Tests(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "11:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:5,
                ),
              ),
              GestureDetector(
                onTap: (){Get.to(TestInfo(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "05:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:3,
                ),);},
                child: Tests(
                  width: width,
                  height: height,
                  studentImage:"assets/person.png",
                  studentName: "Name",
                  time: "23:30",
                  courseName:  "Name of course",
                  part:  "Development",
                  section:1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

