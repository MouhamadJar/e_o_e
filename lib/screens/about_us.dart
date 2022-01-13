import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/xd_android_mobile1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left : width*0.02, right: width*0.01),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Padding(
                  padding:  EdgeInsets.all(height*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: SvgPicture.asset("assets/back (1).svg"),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      // SizedBox(width: 0.5,),
                      const Text(
                        "About us",
                        style: TextStyle(
                          color: Color(0xFF085CB1),
                          fontSize: 21,
                          fontFamily: kFontFamily,
                        ),
                      ),
                      Image.asset("assets/Group 1107.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    SizedBox(width: width*0.36,),
                    const Text("E",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("O",
                      style: TextStyle(
                        color: Color(0xFFCE0505),
                        fontSize: 50,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("E",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontFamily: kFontFamily,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: width*0.2,),
                    const Text("E",
                      style: TextStyle(
                        color: Color(0xFF1080D4),
                        fontSize: 30,
                        fontFamily: kFontFamily,

                      ),),
                    const Text("mpire ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("O",
                      style: TextStyle(
                        color: Color(0xFF1080D4),
                        fontSize: 30,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("f ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("E",
                      style: TextStyle(
                        color: Color(0xFF1080D4),
                        fontSize: 30,
                        fontFamily: kFontFamily,
                      ),),
                    const Text("ducation",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: kFontFamily,
                      ),),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
               Container(
                 child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 200,
                     fontFamily: kFontFamily,
                   ),
                   maxFontSize: 20,
                   minFontSize: 12,
                 ),
               ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text("Our services",
                  style: TextStyle(
                    color: Color(0xFFCE0505),
                    fontSize: 25,
                    fontFamily: kFontFamily,
                  ),),
                SizedBox(
                  height: height * 0.05,
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
                            Image.asset("assets/2827397.png",filterQuality: FilterQuality.high,fit: BoxFit.fill,isAntiAlias: true),
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
                          Image.asset("assets/5514.png",filterQuality: FilterQuality.high,fit: BoxFit.fill,isAntiAlias: true),
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
                  height: height * 0.02,
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
                        width: width * 0.47,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67D20),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/2396832.png"),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            const AutoSizeText(
                              "Take the course you want ",
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
                      width: width * 0.02,
                    ),
                    Container(
                      padding: const EdgeInsets.all(18),
                      height: height * 0.25,
                      width: width * 0.47,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0E564E),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/2075212.png"),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const AutoSizeText(
                            "You can take tests",
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
                  height: height * 0.065,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
