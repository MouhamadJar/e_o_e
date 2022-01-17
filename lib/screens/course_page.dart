import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/exams/first_exam.dart';
import 'package:e_o_e/getx/home_page_controller.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/teacher/teacher_profile.dart';
import 'package:e_o_e/screens/walet.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/favorite.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:e_o_e/student/xd_shopping_cart1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'package:get/get.dart';

import 'about_us.dart';
import 'main_setting.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key, required this.videoImage, required this.tag})
      : super(key: key);
  final String videoImage, tag;

  @override
  State<CoursePage> createState() => _CoursePageState(videoImage, tag);
}

class _CoursePageState extends State<CoursePage> with TickerProviderStateMixin {
  late AnimationController controller;

  _CoursePageState(this.videoImage, this.tag);

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

  late String videoImage, tag;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final courseController = Get.put(ExamController());

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
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudentPage(),
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
                          Navigator.push(
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
                          Navigator.push(
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
    );
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer,
        appBar: AppBar(
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
                  Navigator.pushReplacement(
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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.02),
                  child: Row(
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
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  width: width,
                  height: height * 0.03,
                  child: const AutoSizeText(
                    "Development / Web Development / PHP / Course Content",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    maxFontSize: 18,
                    minFontSize: 12,
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.3,
                          width: double.infinity,
                          child: Hero(
                            tag: tag,
                            child: Image.asset(
                              videoImage,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              isAntiAlias: true,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.049,
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: width * 0.02,
                      child: Container(
                        padding: EdgeInsets.only(top: height * 0.005),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF686EAD), blurRadius: 7),
                            ]),
                        height: height * 0.1,
                        width: width * 0.23,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/add-to-cart (2).svg",
                              height: height * 0.03,
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            const AutoSizeText(
                              "add to cart",
                              style: TextStyle(
                                color: Color(0xFF686EAD),
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: width * 0.38,
                      child: Container(
                        padding: EdgeInsets.only(top: height * 0.005),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFCE0505), blurRadius: 7),
                            ]),
                        height: height * 0.1,
                        width: width * 0.23,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/plus (3).svg",
                              height: height * 0.03,
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            const AutoSizeText(
                              "add to Favorite",
                              style: TextStyle(
                                color: Color(0xFFCE0505),
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: width * 0.75,
                      child: Container(
                        padding: EdgeInsets.only(top: height * 0.005),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFF67D20), blurRadius: 7),
                            ]),
                        height: height * 0.1,
                        width: width * 0.23,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/buy (1).svg",
                              height: height * 0.03,
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            const AutoSizeText(
                              "Buy now",
                              style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontSize: 200,
                                fontFamily: kFontFamily,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              maxFontSize: 14,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height * 0.07,
                  margin: EdgeInsets.only(
                      top: height * 0.03,
                      right: width * 0.01,
                      left: width * 0.01),
                  padding: EdgeInsets.only(left: width * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: const Color(0xFFFDFDFD),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        offset: Offset(0, 5),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        // color : Colors.grey,
                        width: width * 0.2,
                        child: const AutoSizeText(
                          "Best Seller",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: kFontFamily,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          maxFontSize: 16,
                          minFontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Row(
                        children: [
                          SizedBox(width: width * 0.1),
                          Container(
                            width: width * 0.05,
                            child: const AutoSizeText(
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
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * .03,
                            width: width * .2,
                            child: const AutoSizeText(
                              "Created By :",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: kFontFamily,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              maxFontSize: 12,
                              minFontSize: 8,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                TeacherProfile(),
                              );
                            },
                            child: Container(
                              height: height * .03,
                              width: width * .2,
                              child: const AutoSizeText(
                                "Edwin Diaz",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: kFontFamily,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                maxFontSize: 12,
                                minFontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width * 0.3,
                  height: height * 0.03,
                  margin: EdgeInsets.only(left: width * 0.04),
                  child: const AutoSizeText(
                    "Course Content",
                    style: TextStyle(
                      color: Color(0xFFF67D20),
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    maxFontSize: 16,
                    minFontSize: 12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/play-button-arrowhead (1).svg",
                        height: 13,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.01),
                        width: width * 0.85,
                        child: const AutoSizeText(
                          "10 sections.341 lectures.37 h 56 m total length .",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                            fontSize: 200,
                          ),
                          maxFontSize: 16,
                          minFontSize: 11,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset("assets/Path 106.svg"),
                        Positioned(
                          top: height * 0.01,
                          left: width * 0.03,
                          child: Column(
                            children: [
                              Container(
                                color: const Color(0xFFDDDDDD),
                                height: height * 0.03,
                                width: width * 0.23,
                                child: const Center(
                                  child: AutoSizeText(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontFamily: kFontFamily, fontSize: 200),
                                    maxLines: 1,
                                    maxFontSize: 14,
                                    minFontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.05,
                          left: width * 0.07,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.4,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "2 sections.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "3 lectures",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.02,
                                    color: Color(0xFFDDDDDD),
                                    child: const AutoSizeText(
                                      "3 h 56 m total length .",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily,
                                          fontSize: 200),
                                      maxLines: 1,
                                      maxFontSize: 13,
                                      minFontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.11,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.14,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.19,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.21,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset("assets/Path 106.svg"),
                        Positioned(
                          top: height * 0.01,
                          left: width * 0.03,
                          child: Column(
                            children: [
                              Container(
                                color: const Color(0xFFDDDDDD),
                                height: height * 0.03,
                                width: width * 0.23,
                                child: const Center(
                                  child: AutoSizeText(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontFamily: kFontFamily, fontSize: 200),
                                    maxLines: 1,
                                    maxFontSize: 14,
                                    minFontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.05,
                          left: width * 0.07,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.4,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "2 sections.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "3 lectures",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.02,
                                    color: Color(0xFFDDDDDD),
                                    child: const AutoSizeText(
                                      "3 h 56 m total length .",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily,
                                          fontSize: 200),
                                      maxLines: 1,
                                      maxFontSize: 13,
                                      minFontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.11,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.14,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.19,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.21,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset("assets/Path 106.svg"),
                        Positioned(
                          top: height * 0.01,
                          left: width * 0.03,
                          child: Column(
                            children: [
                              Container(
                                color: const Color(0xFFDDDDDD),
                                height: height * 0.03,
                                width: width * 0.23,
                                child: const Center(
                                  child: AutoSizeText(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontFamily: kFontFamily, fontSize: 200),
                                    maxLines: 1,
                                    maxFontSize: 14,
                                    minFontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.05,
                          left: width * 0.07,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.4,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "2 sections.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "3 lectures",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.02,
                                    color: Color(0xFFDDDDDD),
                                    child: const AutoSizeText(
                                      "3 h 56 m total length .",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily,
                                          fontSize: 200),
                                      maxLines: 1,
                                      maxFontSize: 13,
                                      minFontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.11,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.14,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.19,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.21,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset("assets/Path 106.svg"),
                        Positioned(
                          top: height * 0.01,
                          left: width * 0.03,
                          child: Column(
                            children: [
                              Container(
                                color: const Color(0xFFDDDDDD),
                                height: height * 0.03,
                                width: width * 0.23,
                                child: const Center(
                                  child: AutoSizeText(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontFamily: kFontFamily, fontSize: 200),
                                    maxLines: 1,
                                    maxFontSize: 14,
                                    minFontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.05,
                          left: width * 0.07,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.4,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "2 sections.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.175,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "3 lectures",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.02,
                                    color: Color(0xFFDDDDDD),
                                    child: const AutoSizeText(
                                      "3 h 56 m total length .",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily,
                                          fontSize: 200),
                                      maxLines: 1,
                                      maxFontSize: 13,
                                      minFontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.11,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.14,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.19,
                          left: width * 0.03,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/dry-clean (2).svg",
                                height: 7,
                              ),
                              Container(
                                color: Color(0xFFDDDDDD),
                                height: height * 0.02,
                                width: width * 0.17,
                                child: const AutoSizeText(
                                  "1 Section",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: kFontFamily,
                                      fontSize: 200),
                                  maxLines: 1,
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.21,
                          left: width * 0.055,
                          child: Container(
                            color: Color(0xFFDDDDDD),
                            height: height * 0.05,
                            width: width * 0.42,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.11,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Intro",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 9,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: width * 0.01),
                                        width: width * 0.12,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Lecture",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.14,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "Previous",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      SvgPicture.asset(
                                        "assets/play-button.svg",
                                        height: 11,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: width * 0.005),
                                        width: width * 0.15,
                                        height: height * 0.02,
                                        color: Color(0xFFDDDDDD),
                                        child: const AutoSizeText(
                                          "First Step",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: kFontFamily,
                                              fontSize: 200),
                                          maxLines: 1,
                                          maxFontSize: 13,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/play-button-arrowhead (1).svg",
                        height: 13,
                      ),
                      SvgPicture.asset(
                        "assets/newspaper.svg",
                        height: 13,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.01),
                        width: width * 0.85,
                        child: const AutoSizeText(
                          "articles",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                            fontSize: 200,
                          ),
                          maxFontSize: 16,
                          minFontSize: 11,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.3, vertical: height * 0.01),
                  width: double.infinity,
                  height: height * 0.07,
                  child: const AutoSizeText(
                    "Lorem ipsum",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 200,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    maxFontSize: 24,
                    minFontSize: 16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: width * 0.05,
                      left: width * 0.05,
                      bottom: height * 0.03),
                  padding: EdgeInsets.only(left: width * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: const Color(0xFFFDFDFD),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        offset: Offset(0, 5),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  height: height * 0.25,
                  width: width * 0.9,
                  child: const AutoSizeText(
                    kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem,
                    minFontSize: 14,
                    maxFontSize: 24,
                    style: TextStyle(
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.3, vertical: height * 0.01),
                  width: double.infinity,
                  height: height * 0.07,
                  child: const AutoSizeText(
                    "Lorem ipsum",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 200,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    maxFontSize: 24,
                    minFontSize: 16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: width * 0.05,
                      left: width * 0.05,
                      bottom: height * 0.03),
                  padding: EdgeInsets.only(left: width * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: const Color(0xFFFDFDFD),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        offset: Offset(0, 5),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  height: height * 0.25,
                  width: width * 0.9,
                  child: const AutoSizeText(
                    kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem +
                        kLorem,
                    minFontSize: 14,
                    maxFontSize: 24,
                    style: TextStyle(
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/play-button-arrowhead (1).svg",
                        height: 13,
                      ),
                      SvgPicture.asset(
                        "assets/exam.svg",
                        height: 13,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.01),
                        width: width * 0.85,
                        child: const AutoSizeText(
                          "10 exams test",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                            fontSize: 200,
                          ),
                          maxFontSize: 16,
                          minFontSize: 11,
                          maxLines: 1,
                        ),
                      ),
                    ], //
                  ),
                ),
                SizedBox(height: height * 0.03),
                Obx(
                  () => courseController.isPurchase == 1
                      ? Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(width * 0.01),
                              //color : Colors.grey,
                              width: width,
                              height: height * 0.07,
                              child: const AutoSizeText(
                                "You have 30 mins to did this exam and  It will be reviewed by theinstructor soonand we will inform you of the result",
                                maxLines: 2,
                                maxFontSize: 18,
                                minFontSize: 12,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: width * 0.01, left: width * 0.107),
                              width: width,
                              height: height * 0.07,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/right-arrow (1) (1).svg"),
                                  SizedBox(width: width * 0.035),
                                  const AutoSizeText(
                                    "we have 3 parts of exam for you ",
                                    maxLines: 2,
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(const FirstScreen());
                              },
                              child: Container(
                                padding: EdgeInsets.all(width * 0.01997),
                                width: width,
                                height: height * 0.27,
                                child: Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF084B97),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        height: height * 0.15,
                                        width: width * 0.32,
                                        child: const Center(
                                          child: AutoSizeText(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: kFontFamily),
                                          ),
                                        )),
                                    Container(
                                      padding: EdgeInsets.all(width * 0.012),
                                      height: height * 0.15,
                                      width: width * 0.64,
                                      child: const AutoSizeText(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo ",
                                        maxLines: 7,
                                        maxFontSize: 18,
                                        minFontSize: 12,
                                        style:
                                            TextStyle(fontFamily: kFontFamily),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(width * 0.01997),
                              width: width,
                              height: height * 0.27,
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF084B97),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      height: height * 0.15,
                                      width: width * 0.32,
                                      child: const Center(
                                        child: AutoSizeText(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: kFontFamily),
                                        ),
                                      )),
                                  Container(
                                    padding: EdgeInsets.all(width * 0.012),
                                    height: height * 0.15,
                                    width: width * 0.64,
                                    child: const AutoSizeText(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo ",
                                      maxLines: 7,
                                      maxFontSize: 18,
                                      minFontSize: 12,
                                      style: TextStyle(fontFamily: kFontFamily),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(width * 0.01997),
                              width: width,
                              height: height * 0.27,
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF084B97),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      height: height * 0.15,
                                      width: width * 0.32,
                                      child: const Center(
                                        child: AutoSizeText(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: kFontFamily),
                                        ),
                                      )),
                                  Container(
                                    padding: EdgeInsets.all(width * 0.012),
                                    height: height * 0.15,
                                    width: width * 0.64,
                                    child: const AutoSizeText(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo ",
                                      maxLines: 7,
                                      maxFontSize: 18,
                                      minFontSize: 12,
                                      style: TextStyle(fontFamily: kFontFamily),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          children: [
                            Image.asset(
                              "assets/Group 1446.png",
                              filterQuality: FilterQuality.high,
                              isAntiAlias: true,
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/pencil (1).svg"),
                              top: height * 0.04,
                              left: width * 0.05,
                            ),
                            Positioned(
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.62,
                                //                         color : Colors.grey,
                                child: const AutoSizeText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut et dolore  magna aliqua.",
                                  maxLines: 3,
                                  maxFontSize: 16,
                                  minFontSize: 10,
                                ),
                              ),
                              top: height * 0.03,
                              left: width * 0.11,
                            ),
                            Positioned(
                              top: height * 0.02,
                              right: width * 0.017,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    courseController.Purchased();
                                  });
                                },
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  padding: EdgeInsets.all(width * 0.02),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFCE0505),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: const Center(
                                    child: AutoSizeText(
                                      "Buy now  40,000 SP",
                                      style: TextStyle(
                                        fontSize: 200,
                                        fontFamily: kFontFamily,
                                        color: Colors.white,
                                      ),
                                      maxFontSize: 16,
                                      maxLines: 2,
                                      minFontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                SizedBox(height: height * 0.05),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.3),
                  color: Color(0xFFD7640A),
                  height: height * 0.035,
                  width: width * 0.38,
                  child: const Center(
                    child: AutoSizeText(
                      "Buy now",
                      style: TextStyle(
                        fontSize: 200,
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                      maxFontSize: 16,
                      minFontSize: 12,
                      maxLines: 1,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
