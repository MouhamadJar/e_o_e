import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/models/auth/login_models.dart';
import 'package:e_o_e/models/instructor/course_model.dart';
import 'package:e_o_e/models/instructor/instructor_model.dart';
import 'package:e_o_e/models/profile/profile_model.dart';
import 'package:e_o_e/network/local/cache.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/home/search_resulte.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/sign/light_theme/login_screen.dart';
import 'package:e_o_e/screens/teacher/home_teacher.dart';
import 'package:e_o_e/screens/teacher/over_view.dart';
import 'package:e_o_e/screens/teacher/teacher.dart';
import 'package:e_o_e/screens/teacher/teacher_profile.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:e_o_e/screens/walet.dart';
import 'package:e_o_e/screens/xd_android_mobile1.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/favorite.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:e_o_e/student/xd_shopping_cart1.dart';
import 'package:e_o_e/student/xd_student_course.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../about_us.dart';
import '../course_page.dart';
import '../main_setting.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../notification.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;

  late Future<dynamic> suggestedCourses;
  late Future<dynamic> whatsNew;
  late Future<dynamic> topInstructors;
  late Future<dynamic> topCourses;
  var searchController = TextEditingController();
  var searchKey = GlobalKey<FormState>();

  Future<bool> _onWillPop() async {
    return (
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: kPrimaryColor,
            elevation: 11,
            title: const Text(
              'Are you sure?',
              style: TextStyle(color: Colors.white),
            ),
            content: const Text(
              'Do you want to exit an App',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text(
                  'No',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text(
                  'Yes',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
      upperBound: 550,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {
        suggestedCourses = getCoursesByRating();
        whatsNew = getNewestCourse();
        topInstructors = getInstructorsByRating();
        topCourses = getCoursesBySellingTime();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    getAllCategories().then((value)
    {
      categories.clear();
      categoriesIds.clear();
      List<dynamic> data= value['data'];
    // print('datasdadsadad\n'+data[0].toString());
      for (var category in data) {
            category['categories'].forEach(
                    (miniCategory){
                  categories.add(miniCategory['category_name']);
                  categoriesIds.assign(miniCategory['category_name'], miniCategory['category_id']);
                  print('datasdadsadad\n');
                  print(categoriesIds[miniCategory['category_name']]);
                }
            );
          }
    });
    Future<Map<String, dynamic>> profileData = getProfile(token: token);
    final width = MediaQuery.of(context).size.width ?? double.nan;
    final height = MediaQuery.of(context).size.height ?? double.nan;

    List<Widget> topSearching = [
      Container(
        margin: EdgeInsets.only(right: width * 0.011),
        decoration: const BoxDecoration(
          color: Color(0xFFE6E3E3),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: height * 0.042,
        width: width * 0.23,
        child: const Center(
          child: AutoSizeText("Searching",
              maxLines: 1,
              maxFontSize: 16,
              minFontSize: 10,
              style: TextStyle(color: Colors.black)),
        ),
      ),
    ];

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: FutureBuilder(
          future: profileData,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            if (snapshot.hasData) {
              id = snapshot.data['id'];
              return SingleChildScrollView(
                child: Form(
                  key: searchKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.18,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: height * 0.167,
                              width: width,
                              padding: EdgeInsets.only(left: width * 0.02),
                              decoration: const BoxDecoration(
                                color: Color(0xFF085CB1),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40.0),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: width * 0.6,
                                    child: AutoSizeText(
                                      """Hi , ${snapshot.data['user']['username']}.
Improve your skills,
learn without limits with us """,
                                      style: const TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                      ),
                                      maxFontSize: 16,
                                      minFontSize: 8,
                                      maxLines: 3,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.2,
                                  ),
                                  SvgPicture.asset(
                                      "assets/notification (2).svg")
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                height: height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 10),
                                        blurRadius: 50,
                                        color: const Color(0xFF085CB1)
                                            .withOpacity(0.33),
                                      ),
                                    ]),
                                child: SizedBox(
                                  width: controller.value,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please pass data ';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (value) {
                                            if (searchKey.currentState!
                                                .validate()) {
                                              Get.to(SearchResult(data: value));
                                            }
                                          },
                                          controller: searchController,
                                          decoration: const InputDecoration(
                                            hintText: "Search",
                                            hintStyle: TextStyle(
                                              color: Color(0xFF085CB1),
                                              fontSize: 12,
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/loupe.svg",
                                        height: 22,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.02, top: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.04,
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: AutoSizeText(
                                  "Suggested for you",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            FutureBuilder(
                              future: suggestedCourses,
                              builder: (BuildContext context,
                                  AsyncSnapshot<dynamic> snapshot) {
                                if (snapshot.hasError) {
                                  return Center(
                                      child: Text(snapshot.error.toString()));
                                }
                                if (snapshot.hasData) {
                                  List<dynamic> data = snapshot.data;
                                  return Container(
                                    margin:
                                        EdgeInsets.only(left: width * 0.011),
                                    padding: EdgeInsets.only(
                                      top: height * 0.015,
                                    ),
                                    height: height * 0.21,
                                    width: width,
//                    color: Colors.grey,
                                    child: Center(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: data.length,
                                          itemBuilder: (context, index) {
                                            return SuggestedCourse(
                                              width: width,
                                              height: height,
                                              price: data[index]['course_price']
                                                  .toString(),
                                              instructorName: data[index]
                                                      ['course_instructor']
                                                  ['user']['username'],
                                              courseName: data[index]
                                                  ['course_name'],
                                              rating: data[index]['course_rate']
                                                  .toString(),
                                              videoImage: BASEURL +
                                                  data[index]['course_image'].toString(),
                                              total_students: data[index]
                                                  ['course_students'],
                                              id: data[index]
                                              ['course_id'],
                                            );
                                          }),
                                    ),
                                  );
                                }
                                return Center(
                                  child: SpinKitRotatingCircle(
                                    color: kPrimaryColor,
                                    size: 50.0,
                                  ),
                                );
                              },
                            ), //list view for suggested courses
                            SizedBox(
                              height: height * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.01, left: width * 0.01),
                                child: const AutoSizeText(
                                  "What's New",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            FutureBuilder(
                              future: whatsNew,
                              builder: (BuildContext context,
                                  AsyncSnapshot<dynamic> snapshot) {
                                if (snapshot.hasError) {
                                  return Center(
                                      child: Text(snapshot.error.toString()));
                                }
                                if (snapshot.hasData) {
                                  return WhatsNew(
                                    width: width,
                                    height: height,
                                    instructorName:
                                        snapshot.data['course_instructor']
                                            ['user']['username'],
                                    videoImage:
                                        BASEURL + snapshot.data['course_image'],
                                    courseName: snapshot.data['course_name'],
                                    courseDescription:
                                        snapshot.data['course_description'],
                                    id: snapshot.data['course_id'],
                                  );
                                }
                                return Center(
                                  child: SpinKitRotatingCircle(
                                    color: kPrimaryColor,
                                    size: 50.0,
                                  ),
                                );
                              },
                            ), //what's new
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.01, left: width * 0.01),
                                child: const AutoSizeText(
                                  "Top Search",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width * 0.011),
                              padding: EdgeInsets.only(
                                top: height * 0.015,
                              ),
                              height: height * 0.06,
                              width: width,
//                    color: Colors.grey,
                              child: Center(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: topSearching.length,
                                  itemBuilder: (context, index) =>
                                      topSearching[index],
                                ),
                              ),
                            ), //list view for top searching
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: AutoSizeText(
                                  "Featured",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const XDAndroidMobile1()),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(18),
                                    height: height * 0.3,
                                    width: width * 0.48,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF1080D4),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset("assets/2827397.png",
                                            filterQuality: FilterQuality.high,
                                            fit: BoxFit.fill,
                                            isAntiAlias: true),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.48,
                                          child: const AutoSizeText(
                                            "Choose Your Perfect Category ",
                                            style: TextStyle(
                                              fontFamily: kFontFamily,
                                              color: Colors.white,
                                            ),
                                            maxFontSize: 16,
                                            minFontSize: 6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(18),
                                  height: height * 0.3,
                                  width: width * 0.47,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFC345DD),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/5514.png",
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill,
                                          isAntiAlias: true),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      Container(
                                        height: height * 0.07,
                                        width: width * 0.48,
                                        child: const AutoSizeText(
                                          "Join Us the Rooms Education ",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            color: Colors.white,
                                          ),
                                          maxFontSize: 16,
                                          minFontSize: 6,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: AutoSizeText(
                                  "Top Instructors",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            FutureBuilder(
                              future: topInstructors,
                              builder: (BuildContext context,
                                  AsyncSnapshot<dynamic> snapshot) {
                                if (snapshot.hasError) {
                                  return Center(
                                      child: Text(snapshot.error.toString()));
                                }
                                if (snapshot.hasData) {
                                  List<dynamic> data = snapshot.data;
                                  return Container(
                                    margin:
                                        EdgeInsets.only(left: width * 0.011),
                                    padding: EdgeInsets.only(
                                      bottom: height * 0.01,
                                    ),
                                    height: height * 0.23,
                                    width: width,
//                    color: Colors.grey,
                                    child: Center(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: data.length,
                                        itemBuilder: (context, index) =>
                                            Instructors(
                                          height: height,
                                          width: width,
                                          instructorCourses: data[index]
                                                  ['courses_count']
                                              .toString(),
                                          instructorStudents: data[index]
                                                  ['total_students']
                                              .toString(),
                                          instructorRole: data[index]
                                              ['education'],
                                          instructorName: data[index]['user']
                                              ['username'],
                                          instructorImage: BASEURL +
                                              data[index]['profile_image'],
                                          instructorRating: data[index]
                                                  ['total_rate']
                                              .toString(),
                                          id: data[index]['id'],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return Center(
                                  child: SpinKitRotatingCircle(
                                    color: kPrimaryColor,
                                    size: 50.0,
                                  ),
                                );
                              },
                            ), //list view for top instructor
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: AutoSizeText(
                                  "Top Courses",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF67D20),
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            FutureBuilder(
                              future: topCourses,
                              builder: (BuildContext context,
                                  AsyncSnapshot<dynamic> snapshot) {
                                if (snapshot.hasError)
                                  return Center(
                                      child: Text(snapshot.error.toString()));
                                if (snapshot.hasData) {
                                  List<dynamic> data = snapshot.data;
                                  print('data is : \n');
                                  printFullText(snapshot.data.toString());
                                  return Container(
                                    margin:
                                        EdgeInsets.only(left: width * 0.011),
                                    height: height * 0.27,
                                    width: width,
                                    child: Center(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: data.length,
                                          itemBuilder: (context, index) {
                                            return TopCourse(
                                              width: width,
                                              height: height,
                                              coursePrice: data[index]
                                                      ['course_price']
                                                  .toString(),
                                              courseInstructor: data[index]
                                                      ['course_instructor']
                                                  ['user']['username'],
                                              videoImage: BASEURL +
                                                  data[index]['course_image'].toString(),
                                              courseRating: data[index]
                                                      ['course_rate']
                                                  .toString(),
                                              courseInstructorEducation:
                                                  data[index]
                                                          ['course_instructor']
                                                      ['job_role'].toString(),
                                              courseStudents: data[index]
                                                      ['course_students']
                                                  .toString(),
                                              id: data[index]
                                              ['course_id'].toString(),
                                            );
                                          }),
                                    ),
                                  );
                                }
                                return const Center(
                                    child: CircularProgressIndicator());
                              },
                            ), //list view for top courses
                            SizedBox(
                              height: height * 0.07,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Center(
              child: SpinKitRotatingCircle(
                color: kPrimaryColor,
                size: 50.0,
              ),
            );
          },
        ),
      ),
    );
  }
}
