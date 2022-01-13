import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;

    List<Widget> credits = [
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: width*0.03,right : width*0.03,bottom: height*0.02 ,top: height*0.01),
        padding: EdgeInsets.only(right :width*0.005),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5,
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: width*0.01),
              height: height * 0.11,
              width: width*0.23,
              // color: Colors.grey,
              child: Image.asset(
                  "assets/manny-becerra-JCUk_yGAKWo-unsplash.png"),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:  [
                SizedBox(
                  height: height * 0.05,
                  width: width*0.32,
                  child: const AutoSizeText(
                    "Name of credits",
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                    maxFontSize: 18,
                    maxLines: 1,
                    minFontSize: 12,
                  ),
                ),
                const  Text(
                  "Account number",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width:width*0.3),
                    const Text(
                      "Balance : ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "55000 sp ",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SvgPicture.asset("assets/back (1).svg"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Credits",
                      style: TextStyle(
                        color: Color(0xFF085CB1),
                        fontSize: 20,
                        fontFamily: kFontFamily,
                      ),
                    ),
                    InkWell(
                      child: SvgPicture.asset(""),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.021,
              ),
              Container(
                margin : EdgeInsets.only(left: width*0.011),
                //    padding : EdgeInsets.only(bottom: height * 0.01,),
                height: height,
                width: width,
//                    color: Colors.grey,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: credits.length,
                    itemBuilder: (context , index) => credits[index],
                  ),
                ),
              ),//list view for top courses
            ],
          ),
        ),
      ),
    );
  }
}
