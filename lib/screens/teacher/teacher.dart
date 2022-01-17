import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/students_tests.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../about_us.dart';
import '../main_setting.dart';
import '../rooms.dart';
import '../walet.dart';
import '../xd_categories1.dart';
import 'over_view.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context)?.size.width ?? double.nan;
  final height = MediaQuery.of(context)?.size.height ?? double.nan;
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
                        radius: width*.11,
                      ),
                       SizedBox(width: width*.01),
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
                        Get.snackbar("Oh!", "you already in your profile");
                      },
                      child: Container(
                        color: Color(0xFFFEC668),
                        height: MediaQuery.of(context).size.height * 0.091,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: MediaQuery.of(context).size.width * 0.75,
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainSetting(),
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
                                width: MediaQuery.of(context).size.width * 0.75,
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wallet(),
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => XDProfile(),
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
                          Navigator.pushReplacement(
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
                          Navigator.pushReplacement(
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
    );
    return Scaffold(
      drawer: myDrawer,
      appBar: AppBar(
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage("assets/Image 8.png"),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.04,
                      width: width * 0.25,
                      //color: Colors.grey,
                      child: const AutoSizeText(
                        "Maggi Vega",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 2200,
                        ),
                        maxFontSize: 24,
                        minFontSize: 12,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.04,
                      width: width * 0.37,
                      //color: Colors.grey,
                      child: const AutoSizeText(
                        "maggi.vega@gmail.com",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 2200,
                        ),
                        maxFontSize: 24,
                        minFontSize: 12,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.1),
            color: Color(0xFF084B97),
            width: width,
            height: height * 0.53,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(XDProfile());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: width * 0.03, top: height * 0.02),
                        width: width * 0.45,
                        height: height * 0.23,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF8324),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: LayoutBuilder(builder: (context, constrains) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: constrains.maxHeight * .1),
                                height: constrains.maxHeight * .5,
                                width: constrains.maxWidth * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/4445.png"),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: constrains.maxHeight * .1),
                                height: constrains.maxHeight * .2,
                                width: constrains.maxWidth * 0.75,
                                //color : Colors.grey,
                                child: const AutoSizeText(
                                  "Go to profile page",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    color: Colors.white,
                                    fontSize: 2000,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 24,
                                  minFontSize: 12,
                                ),
                              )
                            ],
                          );
                        }),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(StudentsTests());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: width * 0.03, top: height * 0.02),
                        width: width * 0.45,
                        height: height * 0.23,
                        decoration: BoxDecoration(
                          color: Color(0xFF707070),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: LayoutBuilder(builder: (context, constrains) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: constrains.maxHeight * .1),
                                height: constrains.maxHeight * .5,
                                width: constrains.maxWidth * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/31719.png"),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: constrains.maxHeight * .1),
                                height: constrains.maxHeight * .2,
                                width: constrains.maxWidth * 0.75,
                                //color : Colors.grey,
                                child: const AutoSizeText(
                                  "Go to student tests",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    color: Colors.white,
                                    fontSize: 2000,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 24,
                                  minFontSize: 12,
                                ),
                              )
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Get.snackbar(" ","comming soon. . . !",snackStyle: SnackStyle.FLOATING);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: width * 0.27, top: height * 0.02),
                    width: width * 0.45,
                    height: height * 0.23,
                    decoration: BoxDecoration(
                      color: Color(0xFF16A19A),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: LayoutBuilder(builder: (context, constrains) {
                      return Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: constrains.maxHeight * .1),
                            height: constrains.maxHeight * .5,
                            width: constrains.maxWidth * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage("assets/4398.png"),
                                )),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: constrains.maxHeight * .1),
                            height: constrains.maxHeight * .25,
                            width: constrains.maxWidth * 0.8,
                            //color : Colors.grey,
                            child: const AutoSizeText(
                              "Your Registered Date",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                color: Colors.white,
                                fontSize: 2000,
                              ),
                              maxLines: 1,
                              maxFontSize: 24,
                              minFontSize: 12,
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
