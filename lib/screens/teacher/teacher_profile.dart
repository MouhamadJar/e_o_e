import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../course_page.dart';
import 'models/models.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    List<ReviewerInfo> reviews = [
      ReviewerInfo(
        reviewerImg: "assets/person.png",
        reviewerName: "Name of Reviewer",
        reviewerComment:
            "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",
      ),
      ReviewerInfo(
        reviewerImg: "assets/person.png",
        reviewerName: "Name of Reviewer",
        reviewerComment:
            "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",
      ),
      ReviewerInfo(
        reviewerImg: "assets/person.png",
        reviewerName: "Name of Reviewer",
        reviewerComment:
            "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",
      ),
      ReviewerInfo(
        reviewerImg: "assets/person.png",
        reviewerName: "Name of Reviewer",
        reviewerComment:
            "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",
      ),
    ];
    int studentsNumber = 70000;
    int coursesNumber = 30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFCA5B5B),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(width * .02),
                height: height * .31,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/back.svg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * .285),
                      child: const CircleAvatar(
                        maxRadius: 55.0,
                        minRadius: 25.0,
                        backgroundImage: AssetImage("assets/Image 1.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * .0285),
                      width: width,
                      height: height * .04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AutoSizeText(
                            "Joseph Portilla",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2000,
                              color: Colors.white,
                            ),
                            minFontSize: 12,
                            maxFontSize: 20,
                            maxLines: 1,
                          ),
                          const AutoSizeText(
                            "35 years",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              color: Colors.white,
                              fontSize: 2000,
                            ),
                            minFontSize: 12,
                            maxFontSize: 20,
                            maxLines: 1,
                          ),
                          AutoSizeText(
                            studentsNumber.toString() + " students",
                            style: const TextStyle(
                              fontFamily: kFontFamily,
                              color: Colors.white,
                              fontSize: 2000,
                            ),
                            minFontSize: 12,
                            maxFontSize: 20,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2.7 * height,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(width * 0.01),
                      height: height * .04,
                      width: width * .3,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "About us :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Color(0xFFCA5B5B),
                            fontSize: 2020,
                          ),
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width * .01),
                      height: height * .29,
                      width: double.infinity,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Jose Marcial Portilla has a BS and MS in Mechanical Engineering from Santa Clara University and years of experience as a professional instructor and trainer for Data Science and programming. He has publications and patents in various fields such as microfluidics, materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data and he hopes to use his experience in teaching and data science to help other  people learn the power or programming the ability to analyze data, as well as present the data in clear and beautiful visualizations.Currently he works as the Head of Data Science for Pierian Data Inc.",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                            fontSize: 2020,
                          ),
                          maxLines: 20,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(width * 0.01),
                      height: height * .04,
                      width: width * .33,
                      //color: Colors.grey,
                      child: Center(
                        child: AutoSizeText(
                          "My Courses (" + coursesNumber.toString() + ") :",
                          style: const TextStyle(
                            fontFamily: kFontFamily,
                            color: Color(0xFFCA5B5B),
                            fontSize: 2020,
                          ),
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 7),
                      ]),
                      height: height * 0.141,
                      width: width * 0.94,
                      margin: EdgeInsets.only(
                          left: width * 0.012,
                          top: height * 0.012,
                          right: width * 0.021,
                          bottom: height * 0.012),
                      child: Row(
                        children: [
                          Hero(
                              tag: 'w',
                              child: Image.asset(
                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                const Text(
                                  "Name of course",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: kFontFamily),
                                ),
                                const Text(
                                  "By Teacher",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   const SizedBox(width: 10,),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: Color(0xFFFB0000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                            "assets/pointed-star.svg")
                                      ],
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "(123456)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CoursePage(
                                          tag: 'w',
                                          videoImage:
                                              "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Move to course",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: kFontFamily,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 7),
                      ]),
                      height: height * 0.141,
                      width: width * 0.94,
                      margin: EdgeInsets.only(
                          left: width * 0.012,
                          top: height * 0.012,
                          right: width * 0.021,
                          bottom: height * 0.012),
                      child: Row(
                        children: [
                          Hero(
                              tag: 'w',
                              child: Image.asset(
                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                const Text(
                                  "Name of course",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: kFontFamily),
                                ),
                                const Text(
                                  "By Teacher",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   const SizedBox(width: 10,),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: Color(0xFFFB0000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                            "assets/pointed-star.svg")
                                      ],
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "(123456)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CoursePage(
                                          tag: 'w',
                                          videoImage:
                                              "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Move to course",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: kFontFamily,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 7),
                      ]),
                      height: height * 0.141,
                      width: width * 0.94,
                      margin: EdgeInsets.only(
                          left: width * 0.012,
                          top: height * 0.012,
                          right: width * 0.021,
                          bottom: height * 0.012),
                      child: Row(
                        children: [
                          Hero(
                              tag: 'w',
                              child: Image.asset(
                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                const Text(
                                  "Name of course",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: kFontFamily),
                                ),
                                const Text(
                                  "By Teacher",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   const SizedBox(width: 10,),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: Color(0xFFFB0000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                            "assets/pointed-star.svg")
                                      ],
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "(123456)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CoursePage(
                                          tag: 'w',
                                          videoImage:
                                              "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Move to course",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: kFontFamily,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 7),
                      ]),
                      height: height * 0.141,
                      width: width * 0.94,
                      margin: EdgeInsets.only(
                          left: width * 0.012,
                          top: height * 0.012,
                          right: width * 0.021,
                          bottom: height * 0.012),
                      child: Row(
                        children: [
                          Hero(
                              tag: 'w',
                              child: Image.asset(
                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                const Text(
                                  "Name of course",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: kFontFamily),
                                ),
                                const Text(
                                  "By Teacher",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   const SizedBox(width: 10,),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: Color(0xFFFB0000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                            "assets/pointed-star.svg")
                                      ],
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "(123456)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CoursePage(
                                          tag: 'w',
                                          videoImage:
                                              "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Move to course",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: kFontFamily,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 7),
                      ]),
                      height: height * 0.141,
                      width: width * 0.94,
                      margin: EdgeInsets.only(
                          left: width * 0.012,
                          top: height * 0.012,
                          right: width * 0.021,
                          bottom: height * 0.012),
                      child: Row(
                        children: [
                          Hero(
                              tag: 'w',
                              child: Image.asset(
                                  "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png")),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                const Text(
                                  "Name of course",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: kFontFamily),
                                ),
                                const Text(
                                  "By Teacher",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                            padding: EdgeInsets.only(top: height * 0.025),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   const SizedBox(width: 10,),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: Color(0xFFFB0000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                            "assets/pointed-star.svg")
                                      ],
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "(123456)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kFontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CoursePage(
                                          tag: 'w',
                                          videoImage:
                                              "assets/ilya-pavlov-OqtafYT5kTw-unsplash.png",
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Move to course",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: kFontFamily,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(width * 0.01),
                      height: height * .04,
                      width: width * .33,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Top Reviews",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Color(0xFFCA5B5B),
                            fontSize: 2020,
                          ),
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                    ReviewCard(
                      width: width,
                      height: height,
                      reviewerName: reviews[0].reviewerName,
                      reviewerComment: reviews[0].reviewerComment,
                      reviewerImg: reviews[0].reviewerImg,
                    ),
                    ReviewCard(
                      width: width,
                      height: height,
                      reviewerName: reviews[0].reviewerName,
                      reviewerComment: reviews[0].reviewerComment,
                      reviewerImg: reviews[0].reviewerImg,
                    ),
                    ReviewCard(
                      width: width,
                      height: height,
                      reviewerName: reviews[0].reviewerName,
                      reviewerComment: reviews[0].reviewerComment,
                      reviewerImg: reviews[0].reviewerImg,
                    ),
                    Container(
                      margin: EdgeInsets.all(width * 0.05),
                      height: height * .04,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * .04,
                            width: width * .19,
                            decoration: BoxDecoration(
                              color: Color(0xFFC345DD),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: AutoSizeText(
                                "My name",
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: width*.05),
                            width: width*.65,
                            height: height*0.3,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Add a comment",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
