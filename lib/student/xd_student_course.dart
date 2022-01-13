import 'package:e_o_e/screens/course_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class XDStudentCourse extends StatefulWidget {
  const XDStudentCourse({
    Key? key,
  }) : super(key: key);

  @override
  State<XDStudentCourse> createState() => _XDStudentCourseState();
}

class _XDStudentCourseState extends State<XDStudentCourse> with TickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration:const Duration(milliseconds: 700),
      vsync: this,
      upperBound:  250,
    );
    controller.forward();
    controller.addListener((){setState((){});});
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;

    List<Widget> courses =[
      const Text(
        "Your courses",
        style: TextStyle(
            color: Colors.deepOrange,
            fontFamily: kFontFamily,
            fontSize: 20),
      ),
      SizedBox(
        width: width,
        height: height*0.015,
      ),
      Row(
        children: [
          const Spacer(),
          SizedBox(
            height:height*0.052,
            width: controller.value,
            child: TextField(
              onChanged: (value) { },
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
      SizedBox(
        height: height*0.015,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),
          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoursePage(
                tag : 'w',
                videoImage:
                "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
              ),
            ),
          );
        },
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 7
                ),
              ]
          ),
          height: height * 0.141,
          width: width * 0.94,
          margin:  EdgeInsets.only(left: width*0.012, top: height*0.012,right: width*0.021,bottom:height*0.012 ),

          child: Row(
            children: [
              Hero(
                  tag : 'w',
                  child: Image.asset("assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
              SizedBox(
                width: width*0.01,
              ),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    const Text(
                      "Name of course",
                      style: TextStyle(
                          color: Colors.blue, fontFamily: kFontFamily),
                    ),
                    const Text(
                      "By Teacher",
                      style: TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: height*0.005,
                    ),
                    const Text(
                      "Best saller",
                      style: TextStyle(
                          color: Color(0xFFF67D20),
                          fontFamily: kFontFamily),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "55,000 sp",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("123154"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only( top: height*0.025),
                child: Column(
                  children: [
                    Row(
                      children: [
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
                        const SizedBox(width: 3),
                        const Text(
                          "(123456)",
                          style: TextStyle(
                              color: Colors.black, fontFamily: kFontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                    const Text(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: height*0.07,
      ),
    ];

    return Container(
      margin : EdgeInsets.only(left: width*0.011),
      padding : EdgeInsets.all(height * 0.01,),
      height: height ,
      width: width,
//               color: Colors.grey,
      child: Center(
        child: ListView.builder(

          scrollDirection: Axis.vertical,
          itemCount: courses.length,
          itemBuilder: (context , index) => courses[index],
        ),
      ),
    );
  }
}
