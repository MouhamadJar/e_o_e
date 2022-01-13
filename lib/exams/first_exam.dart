import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: Scaffold(
        body  : Container(
          padding: EdgeInsets.all(width*0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap : (){Navigator.pop(context);},
                        child: SvgPicture.asset("assets/back (1).svg",height: height*0.04,),),
                    const Spacer(),
                    Container(
//                     color : Colors.grey,
                      height : height*0.05,
                      width: width*0.15,
                      child :const Center(
                        child:  AutoSizeText(
                          "Submit",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2000,
                            color: Color(0xFFC65700),
                          ),
                          maxLines : 1,
                          maxFontSize: 16,
                          minFontSize: 10,
                        ),
                      ) ,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: height*0.011),
                  width: width,
                  height: height*0.03,
                  child:const AutoSizeText(
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
                Container(
                  margin: EdgeInsets.only(top: height*0.011),
                  width: width,
                  height: height*0.07,
                  child:const AutoSizeText(
                    "You have 30 mins to did this exam and  It will be reviewed by theinstructor soon and we will inform you of the result",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 200,
                      fontFamily: kFontFamily,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    maxFontSize: 18,
                    minFontSize: 12,
                  ),
                ),
                Container(
                  padding : EdgeInsets.only(right : width*0.01 , left : width*0.107),
                  width : width,
                  height : height*0.07,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/right-arrow (1) (1).svg"),
                      SizedBox(width : width*0.035),
                      const AutoSizeText(
                        "Section 1",
                        maxLines : 2 ,
                        maxFontSize : 18 ,
                        minFontSize : 12 ,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:height*0.02),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/exam.svg",
                        height: height*0.035,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:width*0.01),
                        width: width*0.85,
                        child:const AutoSizeText(
                          "The first exam",
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

                    ],//
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                          Container(
                            padding:  EdgeInsets.only(left: width*0.02),
                              // color : Colors.grey,
                            width: width*0.87,
                            height: height*0.02,
                            child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 100,
                              ),
                              maxFontSize: 16,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.03),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                            Container(
                              padding:  EdgeInsets.only(left: width*0.02),
                              // color : Colors.grey,
                              width: width*0.87,
                              height: height*0.02,
                              child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 100,
                                ),
                                maxFontSize: 16,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                          Container(
                            padding:  EdgeInsets.only(left: width*0.02),
                            // color : Colors.grey,
                            width: width*0.87,
                            height: height*0.02,
                            child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 100,
                              ),
                              maxFontSize: 16,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.03),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                            Container(
                              padding:  EdgeInsets.only(left: width*0.02),
                              // color : Colors.grey,
                              width: width*0.87,
                              height: height*0.02,
                              child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 100,
                                ),
                                maxFontSize: 16,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                          Container(
                            padding:  EdgeInsets.only(left: width*0.02),
                            // color : Colors.grey,
                            width: width*0.87,
                            height: height*0.02,
                            child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 100,
                              ),
                              maxFontSize: 16,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.03),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/dry-clean (2).svg",height: height*0.01,),
                            Container(
                              padding:  EdgeInsets.only(left: width*0.02),
                              // color : Colors.grey,
                              width: width*0.87,
                              height: height*0.02,
                              child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 100,
                                ),
                                maxFontSize: 16,
                                minFontSize: 8,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.02),
                        child: Column(
                          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                Check(),
                                AutoSizeText(
                                  "Lorem ipsum" ,
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 100,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
