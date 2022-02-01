import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../course_page.dart';
import 'models/models.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<TeacherProfile> createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    Future<Map<String, dynamic>> myProfile =
        getInstructorProfile(id: widget.id);
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
    return FutureBuilder(
      future: myProfile,
      builder:
          (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        if (snapshot.hasData) {
          dynamic data = snapshot.data;
          List<dynamic> course = data['courses'];
          List<dynamic> reviews = data['ratings'];
          coursesNumber = data['instructor']['courses_count'];
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
                            child: CircleAvatar(
                              maxRadius: 55.0,
                              minRadius: 25.0,
                              backgroundImage: NetworkImage(data['instructor']['profile_image'].toString()=='null' ? DEFAULTIMAGE
                                  : BASEURL + data['instructor']['profile_image']),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * .0285),
                            width: width,
                            height: height * .04,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  data['instructor']['user']['username'],
                                  style: const TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 2000,
                                    color: Colors.white,
                                  ),
                                  minFontSize: 12,
                                  maxFontSize: 20,
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  data['instructor']['age'].toString() +
                                      ' years',
                                  style: const TextStyle(
                                    fontFamily: kFontFamily,
                                    color: Colors.white,
                                    fontSize: 2000,
                                  ),
                                  minFontSize: 12,
                                  maxFontSize: 20,
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  data['instructor']['total_students']
                                          .toString() +
                                      " students",
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
                      //height: 2 * height,
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
                            width: width * .33,
                            //color: Colors.grey,
                            child: Center(
                              child: AutoSizeText(
                                "About ${data['instructor']['user']['first_name']} :",
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
                            padding:
                                EdgeInsets.symmetric(horizontal: width * .04),
                            height: height * .1765,
                            width: double.infinity,
                            //color: Colors.grey,
                            child: AutoSizeText(
                              data['instructor']['bio'],
                              style: const TextStyle(
                                fontFamily: kFontFamily,
                                color: Colors.black,
                              ),
                              maxLines: 10,
                              maxFontSize: 20,
                              minFontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(width * 0.01),
                            height: height * .035,
                            width: width * .33,
                            //color: Colors.grey,
                            child: Center(
                              child: AutoSizeText(
                                "My Courses (" +
                                    coursesNumber.toString() +
                                    ") :",
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
                            margin: EdgeInsets.only(top: height * 0.02),
                            height: height * 0.5,
                            //  width: width * 0.91,
                            //color:Colors.green,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/online-course.svg",
                                      width: width * 0.07,
                                    ),
                                    Container(
                                      height: height * 0.04,
                                      width: width * 0.31,
                                      //color: Colors.grey,
                                      child: const Center(
                                        child: AutoSizeText(
                                          "My courses :",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 2020,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxFontSize: 18,
                                          minFontSize: 12,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: height * .4,
                                  color: Colors.grey[200],
                                  child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      itemBuilder: (context, index) => MyCourse(
                                            height: height,
                                            width: width,
                                            videoImage: BASEURL +
                                                course[index]['course_image']
                                                    .toString(),
                                            courseInstructor: course[index]
                                                        ['course_instructor']
                                                    ['user']['username']
                                                .toString(),
                                            courseInstructorEducation: course[
                                                            index]
                                                        ['course_instructor']
                                                    ['job_role']
                                                .toString(),
                                            courseBadges: course[index]
                                                    ['badges']
                                                .toString(),
                                            coursePrice: course[index]
                                                    ['course_price']
                                                .toString(),
                                            courseRating: course[index]
                                                    ['course_rate']
                                                .toString(),
                                            id: course[index]['course_id'],
                                          ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            color: kPrimaryColor,
                                          ),
                                      itemCount: course.length),
                                ), //My courses LV
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
                          Container(
                            height: height * .37,
                            color: Colors.grey[200],
                            child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  if (reviews.isEmpty) {
                                    return const Center(
                                        child: Text("No reviews"));
                                  } else {
                                    return ReviewCard(
                                        width: width,
                                        reviewerImg: BASEURL +
                                            reviews[index]['instructor']
                                                ['profile_image'],
                                        reviewerName: reviews[index]
                                            ['instructor']['user']['username'],
                                        reviewerComment: reviews[index]
                                            ['rating_content'],
                                        height: height);
                                  }
                                },
                                separatorBuilder: (context, index) => Divider(
                                      color: kPrimaryColor,
                                    ),
                                itemCount:
                                    reviews.isEmpty ? 1 : reviews.length),
                          ), //reviews LV
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
                                      "Add",
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: width * .05),
                                  width: width * .65,
                                  height: height * 0.3,
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
        return Scaffold(
          body: myLoader(),
        );
      },
    );
  }
}
