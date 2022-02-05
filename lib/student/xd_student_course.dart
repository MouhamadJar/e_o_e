import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class XDStudentCourse extends StatefulWidget {
  const XDStudentCourse({
    Key? key,
  }) : super(key: key);

  @override
  State<XDStudentCourse> createState() => _XDStudentCourseState();
}

class _XDStudentCourseState extends State<XDStudentCourse>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
      upperBound: 250,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<dynamic> myCourses = getMyCourses(token: token);
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;

    return FutureBuilder(
      future: myCourses,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) return Center(child: Text(snapshot.error.toString()));
        if (snapshot.hasData) {
          List<dynamic> data = snapshot.data['courses'];
          return Container(
            margin: EdgeInsets.only(left: width * 0.011),
            padding: EdgeInsets.all(
              height * 0.01,
            ),
            height: height,
            width: width,
            child: Center(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => MyCourse(
                        height: height,
                        width: width,
                        courseRating: data[index]['rating']['rating_value'].toString(),
                        videoImage: BASEURL + data[index]['course']['course_image'],
                        coursePrice: data[index]['course']['course_price'].toString(),
                        courseName: data[index]['course']['course_name']['user']['username'],
                        courseBadges: data[index]['course']['badges'],
                        id: data[index]['course']['course_id'],
                        courseInstructor: data[index]['course']['course_instructor']['user']['username'],
                      ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: data.length),
            ),
          );
        }
        return   Center(child: SpinKitRotatingCircle(
          color: kPrimaryColor,
          size: 50.0,
        ),);
      },
    );
  }
}
