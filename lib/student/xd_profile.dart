import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/about_us.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:e_o_e/screens/main_setting.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/walet.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/xd_profile2.dart';
import 'package:e_o_e/student/xd_shopping_cart1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../constants.dart';
import 'favorite.dart';

class XDProfile extends StatefulWidget {
  XDProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<XDProfile> createState() => _XDProfileState();
}

class _XDProfileState extends State<XDProfile> {
  @override
  Widget build(BuildContext context) {
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
                        Get.snackbar("Oh!", "you allready in your profile");
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
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
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
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
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
                        const Text(
                          "Maggi Vega",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Text(
                              "maggi.vega@gmail.com",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            const Text(
                              "23 years",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/graduation-cap.svg"),
                            SizedBox(width: width * 0.02),
                            const Text(
                              "Lorem ipsum dolor sit amet",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.07),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/category (2).svg"),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      const Text(
                        "Favorite category :",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/certificate (1).svg"),
                    SizedBox(
                      width: width * 0.015,
                    ),
                    const Text(
                      "Certficates :",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg"),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.02,
                                  height: height * 0.02,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.425,
                                        ),
                                        const Text(
                                          "5/2021",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg"),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.02,
                                  height: height * 0.02,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.425,
                                        ),
                                        const Text(
                                          "5/2021",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg"),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.02,
                                  height: height * 0.02,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                        fontFamily: kFontFamily,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.425,
                                        ),
                                        const Text(
                                          "5/2021",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.35,
                            ),
                            const Text(
                              "show more >",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  height: height * 0.1,
                  width: width * 0.91,
                  // color: Colors.grey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.facebook_outlined,
                        color: const Color(0xFF2E4D72),
                        size: width * 0.07,
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.31,
                        //color: Colors.grey,
                        child: const Center(
                          child: AutoSizeText(
                            "Facebook link:",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2020,
                              fontWeight: FontWeight.bold,
                            ),
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.41,
                        //color: Colors.grey,
                        child: const Center(
                          child: AutoSizeText(
                            "Facebook.com/userId",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2020,
                            ),
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  height: height * 0.5,
                  width: width * 0.91,
                  //color:Colors.green,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/online-course.svg",
                        width: width * 0.07,
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.31,
                        //color: Colors.grey,
                        child: const Center(
                          child: AutoSizeText(
                            "My courses :",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2020,
                              fontWeight: FontWeight.bold,
                            ),
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.5,
                        width: width * 0.53,
                        //color: Colors.grey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  const CoursePage(
                                    videoImage:
                                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                    tag: 'tag',
                                  ),
                                );
                              },
                              child: Container(
                                height: height * 0.15,
                                width: width * 0.51,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 2,
                                        blurRadius: 7),
                                  ],
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Hero(
                                          tag: 'tag',
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: width * 0.0123),
                                            height: height * 0.086,
                                            width: width * 0.21,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                                ),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                                isAntiAlias: true,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.23,
                                          //color : Colors.grey,
                                          child: const Center(
                                            child: AutoSizeText(
                                              "Move to course ",
                                              style: TextStyle(
                                                fontSize: 2012,
                                                color: Color(0xFF1080D4),
                                              ),
                                              maxLines: 1,
                                              maxFontSize: 16,
                                              minFontSize: 8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.01),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Course name",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Color(0xFF1080D4),
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 16,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "By teacher",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.grey,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Best seller",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.orangeAccent,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
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
                                  const CoursePage(
                                    videoImage:
                                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                    tag: 'tag1',
                                  ),
                                );
                              },
                              child: Container(
                                //margin: EdgeInsets.only(top: height*0.02),
                                height: height * 0.15,
                                width: width * 0.51,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 2,
                                        blurRadius: 7),
                                  ],
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Hero(
                                          tag: 'tag1',
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: width * 0.0123),
                                            height: height * 0.086,
                                            width: width * 0.21,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                                ),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                                isAntiAlias: true,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(13.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.23,
                                          //color : Colors.grey,
                                          child: const Center(
                                            child: AutoSizeText(
                                              "Move to course ",
                                              style: TextStyle(
                                                fontSize: 2012,
                                                color: Color(0xFF1080D4),
                                              ),
                                              maxLines: 1,
                                              maxFontSize: 16,
                                              minFontSize: 8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.01),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Course name",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Color(0xFF1080D4),
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 16,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "By teacher",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.grey,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Best seller",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.orangeAccent,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
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
                                  const CoursePage(
                                    videoImage:
                                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                    tag: 'tag2',
                                  ),
                                );
                              },
                              child: Container(
                                //margin: EdgeInsets.only(top: height*0.02),
                                height: height * 0.15,
                                width: width * 0.51,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 2,
                                        blurRadius: 7),
                                  ],
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Hero(
                                          tag: 'tag2',
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: width * 0.0123),
                                            height: height * 0.086,
                                            width: width * 0.21,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                                ),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                                isAntiAlias: true,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(13.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.23,
                                          //color : Colors.grey,
                                          child: const Center(
                                            child: AutoSizeText(
                                              "Move to course ",
                                              style: TextStyle(
                                                fontSize: 2012,
                                                color: Color(0xFF1080D4),
                                              ),
                                              maxLines: 1,
                                              maxFontSize: 16,
                                              minFontSize: 8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.01),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Course name",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Color(0xFF1080D4),
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 16,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "By teacher",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.grey,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: height * 0.00),
                                          height: height * 0.03,
                                          width: width * 0.25,
                                          //color: Colors.black,
                                          child: const AutoSizeText(
                                            "Best seller",
                                            style: TextStyle(
                                              fontSize: 2020,
                                              color: Colors.orangeAccent,
                                            ),
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => XDProfile2(),
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width * 0.4,
                    decoration: const BoxDecoration(
                        color: Color(0xFF0E564E),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0xFF0E564E),
                          ),
                        ]),
                    child: const Center(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
