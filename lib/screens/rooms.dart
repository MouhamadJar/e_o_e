import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class RoomsScreen extends StatelessWidget {
  RoomsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: SvgPicture.asset("assets/back (1).svg"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              InkWell(
                child: SvgPicture.asset(""),
                onTap: () {},
              ),
            ],
          ),
          title:Padding(
            padding:  EdgeInsets.only(left: width*0.11),
            child: const Text("Rooms meeting",
                style: TextStyle(
                color: Color(0xFF085CB1),
            fontSize: 18,
            fontFamily: kFontFamily,
        ),),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            Row(children: [
              const Text("Upcoming",style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: kFontFamily,
              ),),
              SizedBox(width: width*0.02,),
              const Text("previous",style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: kFontFamily,
              ),),
            ],
            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Divider(
              height: 10,
              color: Color(0xFF707070),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                SvgPicture.asset(
                  "assets/play-button-arrowhead (1).svg",
                  height: 13,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit,
 sed do eiusmod tempor incididunt . """,style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: kFontFamily,
                    ),),
                    SizedBox(height: height*0.02,),
                    Row(
                      children: [
                        Column(children: [
                          const Text("By Instructor",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("development",style: TextStyle(
                            color: Color(0xFFF67D20),
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                        SizedBox(width: width*0.4,),
                        Column(children: [
                          const Text("Today   3:00 pm",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("3 >> 5",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                      ],
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                SvgPicture.asset(
                  "assets/play-button-arrowhead (1).svg",
                  height: 13,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit,
 sed do eiusmod tempor incididunt . """,style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: kFontFamily,
                    ),),
                    SizedBox(height: height*0.02,),
                    Row(
                      children: [
                        Column(children: [
                          const Text("By Instructor",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("development",style: TextStyle(
                            color: Color(0xFFF67D20),
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                        SizedBox(width: width*0.4,),
                        Column(children: [
                          const Text("Today   3:00 pm",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("3 >> 5",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                      ],
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                SvgPicture.asset(
                  "assets/play-button-arrowhead (1).svg",
                  height: 13,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit,
 sed do eiusmod tempor incididunt . """,style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: kFontFamily,
                    ),),
                    SizedBox(height: height*0.02,),
                    Row(
                      children: [
                        Column(children: [
                          const Text("By Instructor",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("development",style: TextStyle(
                            color: Color(0xFFF67D20),
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                        SizedBox(width: width*0.4,),
                        Column(children: [
                          const Text("Today   3:00 pm",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                          SizedBox(height: height*0.02,),
                          const Text("3 >> 5",style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: kFontFamily,
                          ),),
                        ],),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
