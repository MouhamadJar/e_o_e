import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../constants.dart';

void messageToast({required String msg,required Color color}){

  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 5,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 12.0
  );
}
Future<dynamic> picImg()async {
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
  }) : super(key: key);

  final double width;
  final double height;
  final String videoImage;
  final String courseName;
  final String instructorName;
  final String rating;
  final String price;
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
                  videoImage: videoImage??'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthenounproject.com%2Ficon%2Fnone-2222628%2F&psig=AOvVaw2YuyTkQBBKgrifrJvrAWv7&ust=1643136353445000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMihqIiGy_UCFQAAAAAdAAAAABAD',
                  tag: '20',
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
                        videoImage??'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthenounproject.com%2Ficon%2Fnone-2222628%2F&psig=AOvVaw2YuyTkQBBKgrifrJvrAWv7&ust=1643136353445000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMihqIiGy_UCFQAAAAAdAAAAABAD',
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
                        child:  AutoSizeText(
                          courseName,
                          style:const TextStyle(
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
                        child:  AutoSizeText(
                          instructorName,
                          style:const TextStyle(
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
                              style:const TextStyle(
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
                              style:const TextStyle(
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
                              style:const TextStyle(
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