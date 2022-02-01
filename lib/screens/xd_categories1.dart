import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../constants.dart';
import 'about_us.dart';
import 'main_setting.dart';
import 'notification.dart';

class XDCategories1 extends StatefulWidget {
  XDCategories1({
    Key? key,
  }) : super(key: key);

  @override
  State<XDCategories1> createState() => _XDCategories1State();
}

class _XDCategories1State extends State<XDCategories1> {
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
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        drawer: myDrawer,
        appBar:  AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.17,
              ),
              Image.asset("assets/Group 1107.png"),
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
        body: Container(
          padding: EdgeInsets.all(height*0.02),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Container(
               height: height*0.04,
               width: width*0.23,
               //color: Colors.grey,
               child:const AutoSizeText(
                "Categories",
                style :TextStyle(
                   fontSize: 2000,
                  fontFamily: kFontFamily,
                ) ,
                maxFontSize: 20,
                minFontSize: 12,
                maxLines: 1,
                ),
              ),
              Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Container(
                        decoration:const BoxDecoration(
                            color: Color(0xFF085CB1),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        margin: EdgeInsets.all(width*0.02),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Physics",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/atom.svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:const BoxDecoration(
                            color: Color(0xFFC345DD),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        margin: EdgeInsets.all(width*0.02),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Chemistry",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/flask (4).svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Container(
                        margin: EdgeInsets.all(width*0.02),
                        decoration:const BoxDecoration(
                            color: Color(0xFFFF8324),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.12 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.2,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Development",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/coding (2).svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(width*0.02),
                        decoration:const BoxDecoration(
                            color: Color(0xFF0E564E),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Business",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/team (3).svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Container(
                        margin: EdgeInsets.all(width*0.02),
                        decoration:const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.blueGrey,
                            ),
                          ]
                        ),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Design",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.black,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.black,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/web-design (2).svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:const BoxDecoration(
                            color: Color(0xFFCA5B5B),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        margin: EdgeInsets.all(width*0.02),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Marketing",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/bullhorn.svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Container(
                        decoration:const BoxDecoration(
                            color: Color(0xFFCE0505),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        margin: EdgeInsets.all(width*0.02),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.12 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.2,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "IT Software",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/computing (2).svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(width*0.02),
                        decoration:const BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.blueGrey,
                              ),
                            ]
                        ),
                        height: height*0.17,
                        width: width*0.4,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width*0.15 , top :height*0.05 ,),
                                  height: height*0.03,
                                  width: width*0.17,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Math",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only( top :height*0.06 ,left : width *0.01),
                                  height: height*0.03,
                                  width: width*0.38,
                                  //color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Lorem ipsum dolor sit ",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      fontSize: 2000,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 18,
                                    minFontSize: 12,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: SvgPicture.asset("assets/maths.svg"),
                              top: height*0.025,
                              left: width*0.017,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
