import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;

    List<Widget> history = [
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.09,
        margin: EdgeInsets.only(
            left: width * 0.03,
            right: width * 0.03,
            bottom: height * 0.02,
            top: height * 0.01),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(height * 0.011),
              child: SvgPicture.asset(
                "assets/dry-clean (2).svg",
                height: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.25,
                  child: const AutoSizeText(
                    "Name",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.011),
                  //color:Colors.grey ,
                  height: height * 0.03,
                  width: width * 0.27,
                  child: const AutoSizeText(
                    "web developer",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 15,
                      color: Color(0xFF686EAD),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "20:55 pm",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  // color:Colors.grey ,
                  margin: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.03,
                  width: width * 0.2,
                  child: const AutoSizeText(
                    "Remove",
                    maxFontSize: 16,
                    maxLines: 1,
                    minFontSize: 10,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      color: Color(0xFFCE0505),
                    ),
                  ),
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
                      "History",
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
                margin: EdgeInsets.only(left: width * 0.011),
                //    padding : EdgeInsets.only(bottom: height * 0.01,),
                height: height,
                width: width,
//                    color: Colors.grey,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: history.length,
                    itemBuilder: (context, index) => Stack(
                      children: [
                        history[index],
                        Positioned(
                          right: width*0.03,
                          top: height*0.06,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                history.removeAt(index);
                               }
                              );
                            },
                            child: Container(
                              height: height * 0.03,
                              width: width * 0.2,
                              //color : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
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
