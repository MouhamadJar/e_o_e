import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../constants.dart';
import 'about_us.dart';
import 'main_setting.dart';
import 'notification.dart';

class XDAndroidMobile1 extends StatefulWidget {
  const XDAndroidMobile1({
    Key? key,
  }) : super(key: key);

  @override
  State<XDAndroidMobile1> createState() => _XDAndroidMobile1State();
}

class _XDAndroidMobile1State extends State<XDAndroidMobile1> {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.17,
              ),
              Image.asset("assets/Group 1107.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                isAntiAlias: true,
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
        body: Container(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Row(
                children: [
                  Spacer(),
                  Container(
                    margin: EdgeInsets.all(width*0.02),
//                    color: Colors.grey,
                    height: height*0.033,
                    width: width*0.11,
                    child: const AutoSizeText(
                      "Skip",
                      style :TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 2000,
                      ) ,
                      maxLines: 1,
                      maxFontSize: 18,
                      minFontSize: 10,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(width*0.02),
                //color: Colors.grey,
                height: height*0.05,
                width: width*0.5,
                child: const AutoSizeText(
                  "Choose your interest",
                  style :TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 2000,
                  ) ,
                  maxLines: 1,
                  maxFontSize: 18,
                  minFontSize: 10,
                ),
              ),
              Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/icons8-physics-90.svg"),
                                top: height*0.029,
                                left: width*0.057,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.03),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.17,
                            child: const AutoSizeText(
                              "Physics",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/flask (2).svg"),
                                top: height*0.035,
                                left: width*0.073,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.03),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.2,
                            child: const AutoSizeText(
                              "Chemistry",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/pi-mathematical-constant-symbol (1).svg"),
                                top: height*0.043,
                                left: width*0.075,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.051),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.17,
                            child: const AutoSizeText(
                              "Math",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/coding.svg"),
                                top: height*0.043,
                                left: width*0.077,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.027),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.3,
                            child: const AutoSizeText(
                              "Development",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/handshake.svg"),
                                top: height*0.039,
                                left: width*0.073,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.03),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.2,
                            child: const AutoSizeText(
                              "Business",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/web-design.svg"),
                                top: height*0.039,
                                left: width*0.073,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.03),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.17,
                            child: const AutoSizeText(
                              "Design",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/channel.svg"),
                                top: height*0.039,
                                left: width*0.073,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.03),
                            //color: Colors.blue,
                            height: height*0.03,
                            width: width*0.227,
                            child: const AutoSizeText(
                              "Marketing",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(width*0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*height*0.0003),),
                                    color: const Color(0xFFE6E3E3),
                                    boxShadow: const[
                                      BoxShadow(
                                          color: Color(0xFF707070),
                                          blurRadius: 3,
                                          offset: Offset(0,3)
                                      )
                                    ]
                                ),
                                height: height*0.11,
                                width: width*0.22,
                              ),
                              Positioned(
                                child: SvgPicture.asset("assets/computing.svg"),
                                top: height*0.035,
                                left: width*0.073,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left : width*0.04),
                            padding: EdgeInsets.only(top : height*0.005),
                            //color: Colors.blue,
                            height: height*0.035,
                            width: width*0.29,
                            child: const AutoSizeText(
                              "IT Software",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2000,
                              ),
                              maxFontSize: 16,
                              minFontSize: 12,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal : width*0.25,vertical: height*0.03),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xFF085092),
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xFF085092),
                        blurRadius: 5,
                        offset: Offset(0,5)
                      ),
                    ]
                  ),
                  height: height*0.05,
                  width: width*0.5,
                  child:const Center(
                    child:  AutoSizeText(
                      "Next",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 2000,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      maxFontSize: 18,
                      minFontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
