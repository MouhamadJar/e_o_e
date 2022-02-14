import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/teacher/teacher.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../about_us.dart';
import '../course_page.dart';
import '../main_setting.dart';
import '../notification.dart';
import '../rooms.dart';
import '../xd_categories1.dart';
import 'over_view.dart';

class XDInstructorCourses extends StatefulWidget {
  XDInstructorCourses({
    Key? key,
  }) : super(key: key);

  @override
  State<XDInstructorCourses> createState() => _XDInstructorCoursesState();
}

class _XDInstructorCoursesState extends State<XDInstructorCourses>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
      upperBound: 250,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.02,
            ),
            CircleAvatar(
              child: SvgPicture.asset("assets/online-course (2).svg"),
              backgroundColor: kPrimaryColor,
            ),
            SizedBox(
              width: width * 0.09,
            ),
            Image.asset("assets/Group 1107.png"),
            SizedBox(width: width * 0.09),
            GestureDetector(
              onTap: () {
                Get.to(
                  const OverView(),
                );
              },
              child: SvgPicture.asset("assets/file (3).svg"),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDCategories1()),
                );
              },
              icon: GestureDetector(
                  onTap: () {
                    Get.to(const OverView());
                  },
                  child: SvgPicture.asset("assets/category (3).svg")),
            ),
          ],
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset("assets/list (2).svg"),
          );
        }),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xff085cb1),
            body: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff085cb1),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/Image 7.png"),
                          radius: 50,
                        ),
                        const SizedBox(width: 11.0),
                        Column(
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 15),
                                Row(
                                  children: [
                                    const Text(
                                      'Hello',
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Color(0xFFFEC668),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        "assets/icons8-waving-hand-light-skin-tone-96.svg"),
                                  ],
                                ),
                                const Text(
                                  "Maggi Vega",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 7),
                                const Text(
                                  "maggi.vega@gmail.com",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: kFontFamily,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xFFFEC668),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      const Divider(
                        color: Color(0xFFFEC668),
                        height: 7,
                        indent: 25,
                        endIndent: 25,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TeacherPage(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/user (6).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Profile",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainSetting(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/settings (5).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Settings",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: 25,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/notification (4).svg",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Text(
                                      "Notification",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Get.snackbar('', 'coming soon...');
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 25,
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/bubble-chat (3).svg",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Text(
                                      "Chat",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutUs(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: 25,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/information-button (1).svg",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Text(
                                      "About us",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RoomsScreen(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.091,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: 25,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/classroom (2).svg",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Text(
                                      "Rooms",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder(
              future: getInstructorProfile(id: id),
              builder: (context, snapshot) {
                if(snapshot.hasError){
                  return const Text('Enternet connection');
                }
                if(snapshot.hasData) {
                  dynamic x = snapshot.data;
                  List<dynamic> courses = x['courses'];
                  return Container(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your courses",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontFamily: kFontFamily,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: width,
                        height: height * 0.015,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                            height: height * 0.052,
                            width: controller.value,
                            child: TextField(
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.search),
                                  hintText: "Search for your course",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFontFamily,
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0)),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Container(
                        height: height,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: courses.length,
                          itemBuilder: (context, index) => MyCourse(
                              height: height,
                              width: width,
                              videoImage:BASEURL+ courses[index]['course_image'].toString(),
                              courseName: courses[index]['course_name'].toString(),
                              courseInstructor: courses[index]['course_instructor']['user']['username'].toString(),
                              courseBadges: courses[index]['badges'].toString(),
                              coursePrice: courses[index]['course_price'].toString(),
                              courseRating: courses[index]['course_rate'].toString(),
                              id: courses[index]['course_id'].toString()),
                        ),
                      ), //list view for courses
                      SizedBox(
                        height: height * 0.0205,
                      ),
                    ],
                  ),
                );
                }
                return   mySecondLoader();
              }),
        ),
      ),
    );
  }
}
