import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/models/profile/profile_model.dart';
import 'package:e_o_e/network/local/cache.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/sign/light_theme/login_screen.dart';
import 'package:e_o_e/screens/teacher/home_teacher.dart';
import 'package:e_o_e/screens/teacher/over_view.dart';
import 'package:e_o_e/screens/teacher/teacher.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:e_o_e/screens/walet.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/favorite.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:e_o_e/student/xd_shopping_cart1.dart';
import 'package:e_o_e/student/xd_student_course.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import '../../constants.dart';
import '../about_us.dart';
import '../main_setting.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../notification.dart';
import 'home.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Future<Map<String, dynamic>> profileData;
  @override
  void initState() {
    Get.snackbar("Welcome back! ", " Let's do more today  ",
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeIn);
    profileData = getProfile(token: token);
  }

  @override
  Widget build(BuildContext context) {

    final screens = [
      HomePage(),
      XDStudentCourse(),
      HomeTeacher(),
      NotificationScreen()
    ]; //
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
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
      child: FutureBuilder(
        future: profileData,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) return Center(child: Text(snapshot.error.toString()));
          if(snapshot.hasData){
            return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xff085cb1),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.65,
                          decoration: const BoxDecoration(
                            color: Color(0xff085cb1),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: width * .11,
                                backgroundImage: NetworkImage(snapshot.data!['profile_image']
                                    .toString() ==
                                        'null'
                                    ? DEFAULTIMAGE
                                    :BASEURL + snapshot.data['profile_image']),
                              ),
                              SizedBox(width: width * .01),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: width * .01),
                                      Row(
                                        children: [
                                          const AutoSizeText(
                                            'Hello',
                                            style: TextStyle(
                                              fontFamily: kFontFamily,
                                              color: Color(0xFFFEC668),
                                            ),
                                            maxFontSize: 16,
                                            minFontSize: 8,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SvgPicture.asset(
                                              "assets/icons8-waving-hand-light-skin-tone-96.svg"),
                                        ],
                                      ),
                                      Text(
                                        snapshot.data['user']['username'],
                                        style: const TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      Container(
                                        width: width * .4,
                                        height: height * .03,
                                        child: AutoSizeText(
                                          snapshot.data['user']['email'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: kFontFamily,
                                          ),
                                          maxFontSize: 12,
                                          minFontSize: 8,
                                          overflow: TextOverflow.ellipsis,
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
                        Container(
                          width: MediaQuery.of(context).size.width*.65,
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              const Divider(
                                color: Color(0xFFFEC668),
                                height: 7,
                                indent: 25,
                                endIndent: 25,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.04,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    if (snapshot.data['website_role'] == "instructor") {
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
                                  height: MediaQuery.of(context).size.height * 0.091,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.55,
                                        height: 25,
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
                                                fontSize: 12,
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
                                        builder: (context) => MainSetting(),
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        child: Container(
                                          height: 25,
                                          width: MediaQuery.of(context).size.width*.55,
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
                                                  fontSize: 12,
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
                                  height: MediaQuery.of(context).size.height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.55,
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
                                                fontSize: 12,
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
                                  height: MediaQuery.of(context).size.height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 25,
                                        width: MediaQuery.of(context).size.width*.55,
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
                                                fontSize: 12,
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
                                  height: MediaQuery.of(context).size.height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.55,
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
                                                fontSize: 12,
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
                                        width: MediaQuery.of(context).size.width*.55,
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
                                                fontSize: 12,
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
                                    GetStorage().write(
                                       'token',
                                       'noToken',
                                    );
                                    navigateAndFinish(context, LoginScreen());
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
                                        width: MediaQuery.of(context).size.width*.55,
                                        height: 25,
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.logout_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "Logout",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },),
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
          onTap: (index) => setState(
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

