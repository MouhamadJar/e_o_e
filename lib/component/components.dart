import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:e_o_e/screens/teacher/teacher_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import '../constants.dart';

void messageToast({required String msg, required Color color}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 5,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 12.0);
}

Future<dynamic> picImg() async {
  var imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);
  return imagePicker;
}

class SuggestedCourse extends StatelessWidget {
  const SuggestedCourse({
    Key? key,
    required this.width,
    required this.height,
    required this.videoImage,
    required this.courseName,
    required this.instructorName,
    required this.rating,
    required this.price,
    required this.total_students,
    required this.id,
  }) : super(key: key);

  final double width;
  final double height;
  final String videoImage;
  final String courseName;
  final String instructorName;
  final String rating;
  final String price;
  final String id;
  final dynamic total_students;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoursePage(
                  videoImage: videoImage ??
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthenounproject.com%2Ficon%2Fnone-2222628%2F&psig=AOvVaw2YuyTkQBBKgrifrJvrAWv7&ust=1643136353445000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMihqIiGy_UCFQAAAAAdAAAAABAD',
                  tag: '20',
                  id: id,
                ),
              ),
            );
          },
          child: Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.blueGrey, blurRadius: 7),
            ]),
            margin: EdgeInsets.only(
                right: width * 0.02, top: height * 0.01, left: width * 0.015),
            height: height * 0.171,
            width: width * 0.85,
            // color: Colors.black,
            child: Row(
              children: [
                Container(
                  width: width * 0.25,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Hero(
                    tag: '20',
                    child: Image.network(
                        videoImage ??
                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthenounproject.com%2Ficon%2Fnone-2222628%2F&psig=AOvVaw2YuyTkQBBKgrifrJvrAWv7&ust=1643136353445000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMihqIiGy_UCFQAAAAAdAAAAABAD',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        isAntiAlias: true),
                  ),
                ),
                Container(
                  height: height * 0.155,
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width * 0.31,
                        height: height * 0.033,
                        child: AutoSizeText(
                          courseName,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          maxFontSize: 12,
                          minFontSize: 8,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.013,
                      ),
                      SizedBox(
                        width: width * 0.27,
                        height: height * 0.0269,
                        child: AutoSizeText(
                          instructorName,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.012,
                      ),
                      SizedBox(
                        height: height * 0.02,
                        width: width * 0.11,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              rating,
                              style: const TextStyle(
                                  color: Color(0xFFFB0000),
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.012,
                      ),
                      SizedBox(
                        width: width * 0.433,
                        height: height * 0.0269,
                        child: Row(
                          children: [
                            AutoSizeText(
                              price,
                              style: const TextStyle(
                                  fontFamily: kFontFamily,
                                  fontWeight: FontWeight.bold),
                              maxFontSize: 12,
                              maxLines: 1,
                              minFontSize: 8,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            AutoSizeText(
                              "(${total_students.toString()})",
                              style: const TextStyle(
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 12,
                              maxLines: 1,
                              minFontSize: 8,
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
        Positioned(
          child: SizedBox(
            height: height * 0.043,
            width: width * 0.26,
            child: SvgPicture.asset("assets/Path 103.svg"),
          ),
          right: width * 0.02,
          top: height * 0.007,
        ),
        Positioned(
          child: Container(
            height: height * 0.03,
            width: width * 0.155,
            child: const AutoSizeText(
              " Best seller",
              style: TextStyle(
                color: Colors.white,
              ),
              maxLines: 1,
              maxFontSize: 12,
              minFontSize: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          right: width * 0.08,
          top: height * 0.018,
        )
      ],
    );
  }
}

class WhatsNew extends StatelessWidget {
  const WhatsNew({
    Key? key,
    required this.width,
    required this.height,
    required this.videoImage,
    required this.courseName,
    required this.instructorName,
    required this.courseDescription,
    required this.id,
  }) : super(key: key);

  final double width;
  final double height;
  final String videoImage;
  final String courseName;
  final String instructorName;
  final String courseDescription;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CoursePage(
                    videoImage: videoImage,
                    tag: 'Pic',
                    id: id,
                  )),
        );
      },
      child: Stack(children: [
        Container(
          width: width,
          height: height * 0.13,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Group 1447.png"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
          ),
        ),
        Positioned(
          top: height * 0.013,
          left: width * 0.03,
          child: Hero(
            tag: 'Pic',
            child: Container(
              height: height * 0.11,
              width: width * 0.25,
              decoration: BoxDecoration(
//                              color : Colors.grey,
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(videoImage),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: height * 0.025,
          left: width * 0.31,
          child: Container(
            height: height * 0.03,
            width: width * 0.35,
            //color : Colors.grey,
            child: AutoSizeText(
              courseName,
              style: const TextStyle(
                fontSize: 200,
                fontFamily: kFontFamily,
              ),
              maxFontSize: 14,
              maxLines: 1,
              minFontSize: 11,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Positioned(
          top: height * 0.05,
          left: width * 0.31,
          child: Container(
            height: height * 0.027,
            width: width * 0.27,
            // color : Colors.grey,
            child: AutoSizeText(
              "By $instructorName ",
              style: const TextStyle(
                fontSize: 200,
                fontFamily: kFontFamily,
              ),
              maxFontSize: 12,
              maxLines: 1,
              minFontSize: 8,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Positioned(
          top: height * 0.08,
          left: width * 0.31,
          child: Container(
            height: height * 0.041,
            width: width * 0.67,
            //color : Colors.grey,
            child: AutoSizeText(
              courseDescription,
              style: const TextStyle(
                fontSize: 200,
                fontFamily: kFontFamily,
              ),
              maxFontSize: 16,
              maxLines: 3,
              minFontSize: 8,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Positioned(
          top: height * 0.01,
          right: width * 0.03,
          child: Container(
            height: height * 0.047,
            width: width * 0.23,
            decoration: BoxDecoration(
              color: const Color(0xFFCE0505),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: const Center(
              child: AutoSizeText(
                "Check out",
                style: TextStyle(
                  fontFamily: kFontFamily,
                  color: Colors.white,
                ),
                maxFontSize: 12,
                maxLines: 1,
                minFontSize: 8,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Instructors extends StatelessWidget {
  const Instructors({
    Key? key,
    required this.height,
    required this.width,
    required this.instructorImage,
    required this.instructorName,
    required this.instructorRole,
    required this.instructorRating,
    required this.instructorStudents,
    required this.instructorCourses,
    required this.id,
  }) : super(key: key);

  final double height;
  final double width;
  final String instructorImage;
  final String instructorName;
  final String instructorRole;
  final String instructorRating;
  final String instructorStudents;
  final String instructorCourses;
  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          TeacherProfile(id: id),
        );
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.blueGrey, blurRadius: 7),
        ]),
        margin: EdgeInsets.only(
            top: height * 0.016,
            bottom: height * 0.016,
            right: width * 0.02,
            left: width * 0.02),
        height: height * 0.2,
        width: width * 0.6,
        // color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.grey,
                  height: height * 0.11,
                  width: width * 0.2,
                  child: Image.network(instructorImage,
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      isAntiAlias: true),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.025,
                        width: width * .3,
                        child: AutoSizeText(
                          instructorName,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 12,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        height: height * 0.023,
                        width: width * .27,
                        child: AutoSizeText(
                          instructorRole,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 12,
                          minFontSize: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.03,
                            width: width * .1,
                            child: AutoSizeText(
                              instructorRating,
                              style: const TextStyle(
                                color: Color(0xFFFB0000),
                                fontWeight: FontWeight.bold,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 12,
                              minFontSize: 6,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SvgPicture.asset("assets/pointed-star.svg")
                        ],
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
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.0323,
                  width: width * .323,
                  child: Center(
                    child: AutoSizeText(
                      "$instructorStudents students",
                      style: const TextStyle(
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                      maxFontSize: 12,
                      minFontSize: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Container(
                  height: height * 0.025,
                  width: width * .18,
                  child: AutoSizeText(
                    "$instructorCourses Course",
                    style: const TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w300,
                    ),
                    maxFontSize: 12,
                    minFontSize: 8,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TopCourse extends StatelessWidget {
  const TopCourse({
    Key? key,
    required this.width,
    required this.height,
    required this.videoImage,
    required this.courseInstructor,
    required this.courseInstructorEducation,
    required this.courseRating,
    required this.coursePrice,
    required this.courseStudents,
    required this.id,
  }) : super(key: key);

  final double width;
  final double height;
  final String videoImage;
  final String courseInstructor;
  final String courseInstructorEducation;
  final String courseRating;
  final String coursePrice;
  final String courseStudents;
  final String id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CoursePage(
                    videoImage: videoImage,
                    tag: 'coursePic',
                    id: id,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            right: width * 0.023, bottom: height * 0.015, left: width * 0.021),
        height: height * 0.23,
        width: width * 0.43,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.blueGrey, blurRadius: 7),
        ]),
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'coursePic',
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      videoImage,
                    ),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    isAntiAlias: true,
                  ),
                  color: Colors.grey,
                ),
                height: height * 0.11,
                width: width * 0.43,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              width: width * .35,
              height: height * .025,
              child: AutoSizeText(
                courseInstructor,
                style: const TextStyle(
                  color: Colors.blue,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 12,
                minFontSize: 8,
              ),
            ),
            Container(
              width: width * .3,
              height: height * .02,
              child: AutoSizeText(
                courseInstructorEducation,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: kFontFamily,
                ),
                maxFontSize: 12,
                minFontSize: 8,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                SizedBox(width: width * 0.16),
                Container(
                  width: width * .1,
                  height: height * .023,
                  child: AutoSizeText(
                    courseRating,
                    style: const TextStyle(
                      color: Color(0xFFFB0000),
                      fontWeight: FontWeight.bold,
                      fontFamily: kFontFamily,
                    ),
                    maxFontSize: 12,
                    minFontSize: 8,
                    overflow: TextOverflow.clip,
                  ),
                ),
                SvgPicture.asset("assets/pointed-star.svg")
              ],
            ),
            SizedBox(
              width: width * 0.45,
              height: height * 0.03,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.011,
                  ),
                  Container(
                    width: width * .15,
                    height: height * .025,
                    child: AutoSizeText(
                      "$coursePrice sp",
                      style: const TextStyle(
                          fontFamily: kFontFamily, fontWeight: FontWeight.bold),
                      maxFontSize: 12,
                      maxLines: 1,
                      minFontSize: 8,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    width: width * .2,
                    height: height * .025,
                    child: AutoSizeText(
                      "($courseStudents)",
                      style: const TextStyle(
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 12,
                      maxLines: 1,
                      minFontSize: 8,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCourse extends StatelessWidget {
  const MyCourse({
    Key? key,
    required this.height,
    required this.width,
    required this.videoImage,
    required this.courseName,
    required this.courseInstructor,
    required this.courseBadges,
    required this.coursePrice,
    required this.courseRating,
    required this.id,
  }) : super(key: key);

  final double height;
  final double width;
  final String videoImage;
  final String courseName;
  final String courseInstructor;
  final String courseBadges;
  final String coursePrice;
  final String courseRating;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoursePage(
              tag: 'w',
              videoImage: videoImage,
              id: id,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.blueGrey, blurRadius: 7),
            ]),
        height: height * 0.2,
        width: width,
        margin: EdgeInsets.only(
            left: width * 0.012,
            top: height * 0.012,
            right: width * 0.021,
            bottom: height * 0.012),
        child: Row(
          children: [
            Hero(
              tag: 'w',
              child: Container(
                height: height * .2,
                width: width * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                    image: NetworkImage(videoImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.04,
                    width: width * .3,
                    child: AutoSizeText(
                      courseName,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontFamily: kFontFamily,
                      ),
                      maxFontSize: 16,
                      minFontSize: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * .3,
                    child: AutoSizeText(
                      courseInstructor,
                      style: const TextStyle(
                          color: Colors.grey, fontFamily: kFontFamily),
                      maxFontSize: 16,
                      minFontSize: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * .3,
                    child: AutoSizeText(
                      courseBadges,
                      style: const TextStyle(
                          color: Color(0xFFF67D20), fontFamily: kFontFamily),
                      maxFontSize: 16,
                      minFontSize: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * .3,
                    child: AutoSizeText(
                      "$coursePrice sp",
                      style: const TextStyle(
                          fontFamily: kFontFamily, fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      minFontSize: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(width: width * .1,),
            Padding(
              padding: EdgeInsets.only(top: height * 0.025),
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   const SizedBox(width: 10,),
                      Container(
                        height: height * 0.04,
                        width: width * .1,
                        child: AutoSizeText(
                          courseRating,
                          style: const TextStyle(
                              color: Color(0xFFFB0000),
                              fontWeight: FontWeight.bold),
                          maxFontSize: 16,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SvgPicture.asset("assets/pointed-star.svg")
                    ],
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * .3,
                    child: const AutoSizeText(
                      "Move to course",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: kFontFamily,
                          fontSize: 15),
                      maxFontSize: 16,
                      minFontSize: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

Widget myLoader() => Center(
      child: SpinKitRotatingCircle(
        color: kPrimaryColor,
        size: 50.0,
      ),
    );

class Article extends StatelessWidget {
  const Article({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.3, vertical: height * 0.01),
          width: double.infinity,
          height: height * 0.07,
          child: const AutoSizeText(
            "Lorem ipsum",
            style: TextStyle(
              fontFamily: kFontFamily,
              fontSize: 200,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            maxFontSize: 24,
            minFontSize: 16,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              right: width * 0.05, left: width * 0.05, bottom: height * 0.03),
          padding: EdgeInsets.only(left: width * 0.02),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            color: const Color(0xFFFDFDFD),
            boxShadow: [
              BoxShadow(
                blurRadius: 7,
                offset: Offset(0, 5),
                color: Colors.grey.withOpacity(0.5),
              ),
            ],
          ),
          height: height * 0.25,
          width: width * 0.9,
          child: const AutoSizeText(
            kLorem + kLorem + kLorem + kLorem + kLorem + kLorem + kLorem,
            minFontSize: 14,
            maxFontSize: 24,
            style: TextStyle(
              fontSize: 200,
              fontFamily: kFontFamily,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    Key? key,
    required this.height,
    required this.width,
    required this.id,
    required this.courseImage,
    required this.courseName,
    required this.courseInstructor,
    required this.courseBadget,
    required this.coursePrice,
    required this.courseStudents,
    required this.courseRating,
  }) : super(key: key);

  final double height;
  final double width;
  final String id,
      courseBadget,
      courseImage,
      courseName,
      courseInstructor,
      coursePrice,
      courseStudents,
      courseRating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursePage(
                      id: id,
                      tag: 'z',
                      videoImage: courseImage,
                    ),
                  ),
                );
              },
              child: Container(
                height: height * 0.12,
                width: width * 0.8,
                decoration: const BoxDecoration(
                  color: Color(0xFFe9ebfd),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  //  border: Border.all(color: Colors.black.withOpacity(0.2),),
                ),
                margin: EdgeInsets.only(left: width * 0.03, top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: width * 0.03),
                      height: height * 0.15,
                      width: width * 0.23,
                      //color: Colors.grey,
                      child: Hero(
                        tag: 'z',
                        child: Image.network(
                          courseImage,
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.025,
                            width: width * 0.29,
                            //color: Colors.grey,
                            child: AutoSizeText(
                              courseName,
                              style: const TextStyle(
                                  color: Colors.blue, fontFamily: kFontFamily),
                              maxFontSize: 16,
                              minFontSize: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                            width: width * 0.22,
                            //color: Colors.blue,
                            child: AutoSizeText(
                              "By $courseInstructor",
                              style: const TextStyle(
                                  color: Colors.grey, fontFamily: kFontFamily),
                              maxFontSize: 14,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          SizedBox(
                            height: height * 0.023,
                            width: width * 0.20,
                            //color: Colors.blue,
                            child: AutoSizeText(
                              courseBadget,
                              style: const TextStyle(
                                  color: Color(0xFFF67D20),
                                  fontFamily: kFontFamily),
                              maxFontSize: 14,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: height * 0.021,
                                width: width * 0.19,
                                //color: Colors.blue,
                                child: AutoSizeText(
                                  "$coursePrice sp",
                                  style: const TextStyle(
                                      fontFamily: kFontFamily,
                                      fontWeight: FontWeight.bold),
                                  maxFontSize: 14,
                                  minFontSize: 8,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.011,
                              ),
                              SizedBox(
                                height: height * 0.021,
                                width: width * 0.15,
                                //  color: Colors.blue,
                                child: AutoSizeText(
                                  "($courseStudents)",
                                  style: const TextStyle(
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 7,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: height * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //   const SizedBox(width: 10,),
                            Text(
                              courseRating,
                              style: const TextStyle(
                                  color: Color(0xFFFB0000),
                                  fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset("assets/pointed-star.svg")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.008, left: width * 0.03),
              width: width * 0.92,
              height: height * 0.05,
              child: Row(
                children: <Widget>[
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff0e564e),
                          blurRadius: 4,
                        ),
                      ],
                      border: Border.all(
                          color: const Color(0xff0e564e).withOpacity(0.75),
                          width: 3),
                    ),
                    height: height * 0.05,
                    width: width * 0.1,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/plus (2).svg"),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffCE0505),
                          blurRadius: 4,
                        ),
                      ],
                      border: Border.all(
                          color: const Color(0xffCE0505).withOpacity(0.75),
                          width: 3),
                    ),
                    height: height * 0.05,
                    width: width * 0.1,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/removing.svg"),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffF67D20),
                          blurRadius: 4,
                        ),
                      ],
                      border: Border.all(
                          color: const Color(0xffF67D20).withOpacity(0.75),
                          width: 3),
                    ),
                    height: height * 0.05,
                    width: width * 0.1,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/buy (1).svg"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: 0,
            right: width * 0.09,
            child:
                SvgPicture.asset("assets/heart-simple-shape-silhouette.svg")),
      ],
    );
  }
}

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    Key? key,
    required this.height,
    required this.width,
    required this.courseID,
    required this.courseName,
    required this.courseImage,
    required this.courseInstructorName,
    required this.courseBadges,
    required this.coursePrice,
    required this.courseStudents,
    required this.courseRate,
  }) : super(key: key);

  final double height;
  final double width;
  final String courseID,courseImage,courseName,courseInstructorName,courseBadges,coursePrice,courseStudents,courseRate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  CoursePage(
                  id: courseID,
                  tag: 'z',
                  videoImage: courseImage,
                ),
              ),
            );
          },
          child: Container(
            height: height * 0.12,
            width: width * 0.8,
            decoration: const BoxDecoration(
              color: Color(0xFFe9ebfd),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              //  border: Border.all(color: Colors.black.withOpacity(0.2),),
            ),
            margin: EdgeInsets.only(left: width * 0.03, top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * 0.03),
                  height: height * 0.15,
                  width: width * 0.23,
                  //color: Colors.grey,
                  child: Hero(
                    tag: 'z',
                    child: Image.network(
                      courseImage,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.01),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.025,
                        width: width * 0.29,
                        //color: Colors.grey,
                        child:  AutoSizeText(
                          courseName,
                          style:const TextStyle(
                              color: Colors.blue, fontFamily: kFontFamily),
                          maxFontSize: 16,
                          minFontSize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        height: height * 0.025,
                        width: width * 0.22,
                        //color: Colors.blue,
                        child:  AutoSizeText(
                          courseInstructorName,
                          style:const TextStyle(
                              color: Colors.grey, fontFamily: kFontFamily),
                          maxFontSize: 14,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Container(
                        height: height * 0.023,
                        width: width * 0.20,
                        //color: Colors.blue,
                        child:  AutoSizeText(
                          courseBadges,
                          style:const TextStyle(
                              color: Color(0xFFF67D20),
                              fontFamily: kFontFamily),
                          maxFontSize: 14,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.021,
                            width: width * 0.19,
                            //color: Colors.blue,
                            child:  AutoSizeText(
                              coursePrice,
                              style:const TextStyle(
                                  fontFamily: kFontFamily,
                                  fontWeight: FontWeight.bold),
                              maxFontSize: 14,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.011,
                          ),
                          Container(
                            height: height * 0.021,
                            width: width * 0.15,
                            //  color: Colors.blue,
                            child:  AutoSizeText(
                              "($courseStudents)",
                              style:const TextStyle(
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 12,
                              minFontSize: 7,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //   const SizedBox(width: 10,),
                         Text(
                           courseRate,
                          style:const TextStyle(
                              color: Color(0xFFFB0000),
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset("assets/pointed-star.svg")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: height * 0.008, left: width * 0.03),
          width: width * 0.92,
          height: height * 0.05,
          child: Row(
            children: <Widget>[
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff0e564e),
                      blurRadius: 4,
                    ),
                  ],
                  border: Border.all(
                      color: const Color(0xff0e564e).withOpacity(0.75),
                      width: 3),
                ),
                height: height * 0.05,
                width: width * 0.1,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/plus (2).svg"),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffCE0505),
                      blurRadius: 4,
                    ),
                  ],
                  border: Border.all(
                      color: const Color(0xffCE0505).withOpacity(0.75),
                      width: 3),
                ),
                height: height * 0.05,
                width: width * 0.1,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/removing.svg"),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffF67D20),
                      blurRadius: 4,
                    ),
                  ],
                  border: Border.all(
                      color: const Color(0xffF67D20).withOpacity(0.75),
                      width: 3),
                ),
                height: height * 0.05,
                width: width * 0.1,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/buy (1).svg"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
