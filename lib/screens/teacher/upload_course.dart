import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';


class UploadCourse extends StatefulWidget {
  const UploadCourse({Key? key}) : super(key: key);

  @override
  State<UploadCourse> createState() => _UploadCourseState();
}

class _UploadCourseState extends State<UploadCourse>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1250),
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    int sections = 1;
    bool article = false;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(width * 0.035),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/back (1).svg"),
                  ),
                  SizedBox(
                    width: width * 0.31,
                  ),
                  const AutoSizeText(
                    "Video",
                    style: TextStyle(
                      fontSize: 10020,
                      color: Color(0xFFCE0505),
                    ),
                    maxLines: 1,
                    maxFontSize: 24,
                    minFontSize: 12,
                  )
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(top: height * .01, bottom: height * .02),
                width: width * 0.85,
                height: height * .035,
                //color: Colors.green,
                child: const Center(
                  child: AutoSizeText(
                    "Here’s where you add all your sections to get started.",
                    minFontSize: 12,
                    maxFontSize: 18,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 5000,
                      fontFamily: kFontFamily,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .02),
                width: width * .25,
                height: height * .03,
                //color: Colors.green,
                child: const Center(
                  child: AutoSizeText(
                    "new Section  :",
                    minFontSize: 12,
                    maxFontSize: 18,
                    maxLines: 1,
                    style:  TextStyle(
                      fontSize: 5000,
                      color: Color(0xFFC65700),
                      fontFamily: kFontFamily,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.add_event,
                    progress: controller,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: height * .02, bottom: height * .02),
                    width: width * .15,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "Article :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextFormField(
                      decoration: InputDecoration(
                        labelText: "Add your article",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
              SizedBox(height: height*.02,),
              Row(
                children: [
                 const Icon(
                    Icons.videocam,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: height * .02, bottom: height * .02),
                    width: width * .15,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "Video :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height*.05,
                    width: width*.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.1),
                      boxShadow:const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 9.0,
                          offset: Offset(0,10),
                        )
                      ]
                    ),
                    child: const Center(
                      child: AutoSizeText(
                          "Upload course",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 2020,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ) ,
                    ),
                  )
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.view_list,
                    progress: controller,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: height * .02, bottom: height * .02),
                    width: width * .15,
                    height: height * .03,
                    //color: Colors.green,
                    child: const Center(
                      child: AutoSizeText(
                        "test :",
                        minFontSize: 12,
                        maxFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 5000,
                          color: Color(0xFFC65700),
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height*.05,
                    width: width*.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11.1),
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 9.0,
                            offset: Offset(0,10),
                          )
                        ]
                    ),
                    child: const Center(
                      child: AutoSizeText(
                        "Publish test",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 2020,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ) ,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: Container(
                      margin: EdgeInsets.only(top: height*.1),
                      height: height*.07,
                      width: width*.3,
                      decoration: BoxDecoration(
                        color: Color(0xFFC65700),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: const Center(
                        child: AutoSizeText("Done"),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
