import 'package:auto_size_text/auto_size_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_o_e/screens/rooms.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'about_us.dart';
import 'course_page.dart';
import 'main_setting.dart';
import 'package:get/get.dart';

import 'notification.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    const HomePage(),
    XDStudentCourse(),
    HomeTeacher(),
    NotificationScreen()
  ]; //

  @override
  void initState() {
    Get.snackbar("Welcome back! ", " Let's do more today  ",
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        ?.size
        .width ?? double.nan;
    final height = MediaQuery
        .of(context)
        ?.size
        .height ?? double.nan;
    final items = <Widget>[
      Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: const Icon(
          Icons.home_outlined,
          size: 30,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: SvgPicture.asset("assets/reading-book (2).svg"),
      ),
      Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: SvgPicture.asset("assets/teacher (1).svg"),
      ),
      Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: SvgPicture.asset("assets/notification (4).svg"),
      ),
    ];
    Drawer myDrawer = Drawer(
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
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                          if (index == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TeacherPage(),
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentPage(),
                              ),
                            );
                          }
                        });
                      },
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.75,
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
                              builder: (context) => MainSetting(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.75,
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
                              builder: (context) => Wallet(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.75,
                              height: 25,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/wallet (1).svg",
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Wallet",
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
                              builder: (context) => XDProfile(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.75,
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
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.75,
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
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.75,
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
    );
    final appBar = <AppBar>[
      AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            IconButton(
              icon: SvgPicture.asset("assets/add-to-cart (4).svg"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XDShoppingCart1(),
                  ),
                );
              },
            ),
            SizedBox(
              width: width * 0.06,
            ),
            Image.asset("assets/Group 1107.png"),
            SizedBox(width: width * 0.09),
            InkWell(
              child: SvgPicture.asset("assets/favorite (2).svg"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteCourses(),
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDCategories1()),
                );
              },
              icon: SvgPicture.asset("assets/category (3).svg"),
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
      AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            IconButton(
              icon: SvgPicture.asset("assets/add-to-cart (4).svg"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XDShoppingCart1(),
                  ),
                );
              },
            ),
            SizedBox(
              width: width * 0.06,
            ),
            Image.asset("assets/Group 1107.png"),
            SizedBox(width: width * 0.09),
            InkWell(
              child: SvgPicture.asset("assets/favorite (2).svg"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteCourses(),
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDCategories1()),
                );
              },
              icon: SvgPicture.asset("assets/category (3).svg"),
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
      AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.033,
            ),
            GestureDetector(
              onTap: () {
                Get.to(XDInstructorCourses());
              },
              child: SvgPicture.asset("assets/online-course (4).svg"),
            ),
            SizedBox(
              width: width * 0.09,
            ),
            Image.asset("assets/Group 1107.png"),
            SizedBox(width: width * 0.13),
            GestureDetector(
              onTap: () {
                Get.to(
                  OverView(),
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
              icon: SvgPicture.asset("assets/category (3).svg"),
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
      AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            IconButton(
              icon: SvgPicture.asset("assets/add-to-cart (4).svg"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XDShoppingCart1(),
                  ),
                );
              },
            ),
            SizedBox(
              width: width * 0.06,
            ),
            Image.asset("assets/Group 1107.png"),
            SizedBox(width: width * 0.09),
            InkWell(
              child: SvgPicture.asset("assets/favorite (2).svg"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteCourses(),
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDCategories1()),
                );
              },
              icon: SvgPicture.asset("assets/category (3).svg"),
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
    ];
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        drawer: myDrawer,
        appBar: appBar[index],
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 450),
          items: items,
          index: index,
          height: 50,
          onTap: (index) =>
              setState(
                    () {
                  this.index = index;
                },
              ),
          backgroundColor: Colors.transparent,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
      upperBound: 550,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width ?? double.nan;
    final height = MediaQuery
        .of(context)
        .size
        .height ?? double.nan;

    List<Widget> suggestedCourses = [
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
      Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const CoursePage(
                    videoImage: "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                    tag: '20',
                  ),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.blueGrey, blurRadius: 7),
              ]),
              margin: EdgeInsets.only(
                  right: width * 0.02, top: height * 0.01, left: width * 0.015),
              height: height * 0.171,
              width: width * 0.85,
              // color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Hero(
                      tag: '20',
                      child: Image.asset(
                          "assets/sigmund-oFKyMk4_5gA-unsplash.png",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          isAntiAlias: true),
                    ),
                  ),
                  Container(
                    height: height * 0.155,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.31,
                          height: height * 0.033,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(color: Colors.blue, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        SizedBox(
                          width: width * 0.27,
                          height: height * 0.0269,
                          child: const AutoSizeText(
                            "By Teacher",
                            style:
                            TextStyle(color: Colors.black, fontSize: 200),
                            maxFontSize: 20,
                            minFontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          height: height * 0.02,
                          width: width * 0.11,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    color: Color(0xFFFB0000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/pointed-star.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        SizedBox(
                          width: width * 0.431,
                          height: height * 0.0269,
                          child: Row(
                            children: [
                              const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontSize: 200,
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 18,
                                maxLines: 1,
                                minFontSize: 12,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontSize: 200,
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 16,
                                maxLines: 1,
                                minFontSize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: height * 0.043,
              width: width * 0.26,
              child: SvgPicture.asset("assets/Path 103.svg"),
            ),
            right: width * 0.02,
            top: height * 0.007,
          ),
          Positioned(
            child: Container(
              height: height * 0.03,
              width: width * 0.155,
              child: const AutoSizeText(
                " Best seller",
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.white,
                ),
                maxLines: 1,
                maxFontSize: 15,
                minFontSize: 11,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            right: width * 0.08,
            top: height * 0.018,
          )
        ],
      ),
    ];
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

    List<Widget> topInstructors = [
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(
            TeacherProfile(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          margin: EdgeInsets.only(
              top: height * 0.016,
              bottom: height * 0.016,
              right: width * 0.02,
              left: width * 0.02),
          height: height * 0.163,
          width: width * 0.5820,
          // color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Image.asset("assets/unnamed.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "Dr. Jose Porilla",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 12,
                        ),
                        const AutoSizeText(
                          "Data Science",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 200,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 14,
                          minFontSize: 12,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const AutoSizeText(
                              "4.5",
                              style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const AutoSizeText(
                    "234,45  students",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    ),
                    maxFontSize: 16,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const AutoSizeText(
                    "8 Course",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 200,
                    ),
                    maxFontSize: 14,
                    minFontSize: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
    List<Widget> topCourses = [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const CoursePage(
                  videoImage:
                  "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                  tag: 'coursePic',
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              right: width * 0.023,
              bottom: height * 0.015,
              left: width * 0.021),
          height: height * 0.23,
          width: width * 0.43,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.blueGrey, blurRadius: 7),
          ]),
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
                child: Hero(
                    tag: 'coursePic',
                    child: Image.asset(
                      "assets/bamdad-norouzian-dxedAj3puxY-unsplash.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true,
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const AutoSizeText(
                "Dr. Jose Porilla",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 16,
                minFontSize: 12,
              ),
              const AutoSizeText(
                "Data Science",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 200,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 14,
                minFontSize: 12,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.16),
                  const AutoSizeText(
                    "4.5",
                    style: TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                  SvgPicture.asset("assets/pointed-star.svg")
                ],
              ),
              SizedBox(
                width: width * 0.42,
                height: height * 0.0269,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.011,
                    ),
                    const AutoSizeText(
                      "55,000 sp",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const AutoSizeText(
                      "(123,154)",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 14,
                      maxLines: 1,
                      minFontSize: 11,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
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
                          child: const AutoSizeText(
                            """Hi , Alice.
Lorem ipsum dolor sit amet, consectet """,
                            style: TextStyle(
                                fontSize: 100,
                                fontFamily: kFontFamily,
                                color: Colors.white),
                            maxFontSize: 19,
                            minFontSize: 14,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        SvgPicture.asset("assets/notification (2).svg")
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 50,
                              color: const Color(0xFF085CB1).withOpacity(0.33),
                            ),
                          ]),
                      child: Container(
                        width: controller.value,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF085CB1)
                                        .withOpacity(0.5),
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
              padding: EdgeInsets.only(left: width * 0.02, top: height * 0.01),
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.011),
                    padding: EdgeInsets.only(
                      top: height * 0.015,
                    ),
                    height: height * 0.21,
                    width: width,
//                    color: Colors.grey,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: suggestedCourses.length,
                        itemBuilder: (context, index) =>
                        suggestedCourses[index],
                      ),
                    ),
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const CoursePage(
                              videoImage:
                              "assets/christopher-gower-m_HRfLhgABo-unsplash.png",
                              tag: 'Pic',
                            )),
                      );
                    },
                    child: Stack(children: [
                      Container(
                        width: width,
                        height: height * 0.135,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Group 1447.png"),
                            filterQuality: FilterQuality.high,
                            isAntiAlias: true,
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.013,
                        left: width * 0.03,
                        child: Hero(
                          tag: 'Pic',
                          child: Container(
                            height: height * 0.11,
                            width: width * 0.25,
                            decoration: BoxDecoration(
//                              color : Colors.grey,
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/christopher-gower-m_HRfLhgABo-unsplash.png"),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                                isAntiAlias: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.025,
                        left: width * 0.31,
                        child: Container(
                          height: height * 0.03,
                          width: width * 0.35,
                          //color : Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                              fontSize: 200,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 14,
                            maxLines: 1,
                            minFontSize: 11,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.05,
                        left: width * 0.31,
                        child: Container(
                          height: height * 0.027,
                          width: width * 0.27,
                          // color : Colors.grey,
                          child: const AutoSizeText(
                            "By Instructor ",
                            style: TextStyle(
                              fontSize: 200,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 12,
                            maxLines: 1,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.08,
                        left: width * 0.31,
                        child: Container(
                          height: height * 0.039,
                          width: width * 0.67,
                          //color : Colors.grey,
                          child: const AutoSizeText(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing",
                            style: TextStyle(
                              fontSize: 200,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 14,
                            maxLines: 1,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.01,
                        right: width * 0.03,
                        child: Container(
                          height: height * 0.047,
                          width: width * 0.23,
                          decoration: BoxDecoration(
                            color: const Color(0xFFCE0505),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: const Center(
                            child: AutoSizeText(
                              "Check out",
                              style: TextStyle(
                                fontSize: 200,
                                fontFamily: kFontFamily,
                                color: Colors.white,
                              ),
                              maxFontSize: 14,
                              maxLines: 1,
                              minFontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
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
                        itemBuilder: (context, index) => topSearching[index],
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
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
                                builder: (context) => const XDAndroidMobile1()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          height: height * 0.25,
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
                                height: height * 0.017,
                              ),
                              const AutoSizeText(
                                "Choose Your Perfect Category ",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 200,
                                  color: Colors.white,
                                ),
                                maxFontSize: 16,
                                minFontSize: 12,
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
                        height: height * 0.25,
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
                            const AutoSizeText(
                              "Join Us the Rooms Education ",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 200,
                                color: Colors.white,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.011),
                    padding: EdgeInsets.only(
                      bottom: height * 0.01,
                    ),
                    height: height * 0.23,
                    width: width,
//                    color: Colors.grey,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topInstructors.length,
                        itemBuilder: (context, index) => topInstructors[index],
                      ),
                    ),
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
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF67D20),
                        ),
                        maxLines: 1,
                        maxFontSize: 22,
                        minFontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.011),
                    //    padding : EdgeInsets.only(bottom: height * 0.01,),
                    height: height * 0.27,
                    width: width,
//                    color: Colors.grey,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topCourses.length,
                        itemBuilder: (context, index) => topCourses[index],
                      ),
                    ),
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
}
