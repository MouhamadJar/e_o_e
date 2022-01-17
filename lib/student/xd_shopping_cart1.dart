import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/about_us.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:e_o_e/screens/main_setting.dart';
import 'package:e_o_e/screens/notification.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'favorite.dart';

class XDShoppingCart1 extends StatefulWidget {
  XDShoppingCart1({
    Key? key,
  }) : super(key: key);

  @override
  State<XDShoppingCart1> createState() => _XDShoppingCart1State();
}

class _XDShoppingCart1State extends State<XDShoppingCart1> {
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
                              const SizedBox(width: 10),
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
                              builder: (context) =>const StudentPage(),
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
    List<Widget> cart = [
      Row(
        children: [
          const Spacer(),
          Container(
            margin:  EdgeInsets.symmetric(horizontal: width*0.05),
            height: height*0.05,
            width: width*0.6,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search for your course",
                  hintStyle: TextStyle(
                    fontSize: 13,
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
        height: height*0.015,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.003,
      ),
      Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(
                    tag : 'z',
                    videoImage:
                    "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                  ),
                ),
              );
            },
            child: Container(
              height: height*0.12,
              width: width*0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFe9ebfd),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                //  border: Border.all(color: Colors.black.withOpacity(0.2),),
              ),
              margin:  EdgeInsets.only(left: width*0.03, top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right : width*0.03),
                    height: height*0.15,
                    width: width*0.23,
                    //color: Colors.grey,
                    child: Hero(
                      tag : 'z',
                      child: Image.asset(
                        "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top : height*0.01),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.025,
                          width: width*0.29,
                          //color: Colors.grey,
                          child: const AutoSizeText(
                            "Name of course",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: kFontFamily
                            ),
                            maxFontSize: 16,
                            minFontSize: 10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: width*0.22,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "By Teacher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Container(
                          height: height*0.023,
                          width: width*0.20,
                          //color: Colors.blue,
                          child: const AutoSizeText(
                            "Best saller",
                            style: TextStyle(
                                color: Color(0xFFF67D20),
                                fontFamily: kFontFamily),
                            maxFontSize: 14,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: height*0.005,
                        ),
                        Row(
                          children:  [
                            Container(
                              height: height*0.021,
                              width: width*0.19,
                              //color: Colors.blue,
                              child: const AutoSizeText(
                                "55,000 sp",
                                style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 14,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: width*0.011,
                            ),
                            Container(
                              height: height*0.021,
                              width: width*0.15,
                              //  color: Colors.blue,
                              child: const AutoSizeText(
                                "(123,154)",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                ),
                                maxFontSize: 12,
                                minFontSize: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height : height*0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   const SizedBox(width: 10,),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top: height*0.008,left: width*0.03),
            width: width*0.92,
            height: height*0.05,
            child: Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xff0e564e),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff0e564e)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/plus (2).svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffCE0505),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffCE0505)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/removing.svg"),
                  ),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [
                      BoxShadow(
                        color:  Color(0xffF67D20),
                        blurRadius: 4,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xffF67D20)
                            .withOpacity(0.75),
                        width: 3),
                  ),
                  height: height*0.05,
                  width: width*0.1,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/buy (1).svg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: height*0.2,
      ),

    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        drawer:myDrawer,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.01,
              ),
              CircleAvatar(
                child: SvgPicture.asset("assets/add-to-cart (5).svg"),
                radius: 25,
              ),
              SizedBox(
                width: width * 0.06,
              ),
              Image.asset("assets/Group 1107.png"),
              SizedBox(width: width * 0.09),
              InkWell(
                child: SvgPicture.asset("assets/favorite (2).svg"),
                onTap: () {
                  Navigator.pushReplacement(
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
          child: Container(
            padding:  EdgeInsets.only(top: height*0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin : EdgeInsets.only(left: width*0.011),
                  padding : EdgeInsets.only(top: height * 0.015,),
                  height: height ,
                  width: width,
//                    color: Colors.grey,
                  child: Center(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: cart.length,
                      itemBuilder: (context , index) => cart[index],
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
