import 'dart:io';
import 'package:dio/dio.dart' as DIO;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/getx/upload_video_controller.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../../constants.dart';
import 'finish_uploading_course.dart';

class UploadCourse extends StatefulWidget {
  const UploadCourse({Key? key}) : super(key: key);

  @override
  State<UploadCourse> createState() => _UploadCourseState();
}

class _UploadCourseState extends State<UploadCourse>
    with TickerProviderStateMixin {
  List<DynamicSection> sections = [
    DynamicSection(),
  ];
  int x = 1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    int mySections = 1;
    bool article = false;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(width * 0.035),
          child: SingleChildScrollView(
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
                ), //title
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
                ), //title
                Container(
                  height: height * .43 * x,
                  width: width,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => sections[index],
                    itemCount: sections.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: height * .02,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          sections.add(const DynamicSection());
                          x++;
                        });
                      },
                      child: Container(
                        height: height * 0.1,
                        width: width * .17,
                        decoration: BoxDecoration(
                          color: Color(0xFF707070).withOpacity(0.65),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: width * .13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: sections.length != 1
                          ? () {
                              setState(() {
                                sections.removeLast();
                                x--;
                              });
                            }
                          : () {},
                      child: Container(
                        height: height * 0.1,
                        width: width * .17,
                        decoration: BoxDecoration(
                          color: Color(0xFF707070).withOpacity(0.65),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.minimize_outlined,
                            size: width * .13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>FinishUploadingCourse());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: height * .1),
                        height: height * .07,
                        width: width * .3,
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
      ),
    );
  }
}

class DynamicSection extends StatefulWidget {
  const DynamicSection({Key? key}) : super(key: key);

  @override
  State<DynamicSection> createState() => _DynamicSectionState();
}

class _DynamicSectionState extends State<DynamicSection>
    with TickerProviderStateMixin {
  List<String> videosId = [];
  late AnimationController controller;
  late VideoPlayerController videoController;
  var videoNameController = TextEditingController();
  var sectionController = TextEditingController();
  var articleController = TextEditingController();
  File file = File('');
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1250),
    );
    controller.forward();
    videoController =VideoPlayerController.file(file)
      ..addListener(() =>setState(() {}))
      ..setLooping(true)
      ..initialize();
  }

  int videoCount = 0;


  var uploadController = Get.put(UploadVideoController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: height * .02),
              width: width * .25,
              height: height * .03,
              //color: Colors.green,
              child: const Center(
                child: AutoSizeText(
                  "Section  :",
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
            SizedBox(
              width: width*.6,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Add your article",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                controller: sectionController,
              ),
            ),
          ],
        ),
        Row(
          children: [
            AnimatedIcon(
              icon: AnimatedIcons.add_event,
              progress: controller,
            ),
            Container(
              margin: EdgeInsets.only(top: height * .02, bottom: height * .02),
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
          controller: articleController,
        ),
        SizedBox(
          height: height * .02,
        ),
        Row(
          children: [
            const Icon(
              Icons.videocam,
            ),
            Container(
              margin: EdgeInsets.only(top: height * .02, bottom: height * .02),
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
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  Container(
                    padding: EdgeInsets.all(width * .02),
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: kInputDecoration.copyWith(
                            labelText: 'videoName',
                            labelStyle: const TextStyle(
                              fontSize: 16,
                            ),
                            icon: const Icon(Icons.drive_file_rename_outline),
                          ),
                          controller: videoNameController,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await FilePicker.platform.pickFiles(type : FileType.video).then((value) {
                              file = File(value!.files.single.path.toString());
                              videoController =VideoPlayerController.file(file)
                                ..addListener(() =>setState(() {}))
                                ..setLooping(true)
                                ..initialize().then((_) async {
                                  print('sdv\n'+videoController.value.duration.toString());
                                  DioHelper.uploadVideo(formData: {
                                    'video': await DIO.MultipartFile.fromFile(
                                        file.path),
                                    'video_title': videoNameController.text,
                                    'video_duration': videoController
                                        .value.duration.inMinutes
                                        .toDouble(),
                                  }).then((value) {
                                    setState(() {
                                      videoCount++;
                                      messageToast(
                                          msg: 'video uploaded successfully',
                                          color: Colors.greenAccent);
                                      videoNameController.text = '';
                                      uploadController.setProgress(0.0);
                                      uploadController.videoIds.add(value.data['video_id'].toString());
                                      print('v\n'+value.data.toString());
                                    });
                                  }).catchError((onError) {
                                    print('error is \n' + onError.toString());
                                  });
                                } );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            margin: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Text(
                              'Upload now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GetX<UploadVideoController>(builder: (controller) {
                          int x = controller.getProgress().toInt();
                          return Container(
                            height: height * .03,
                            child: Text(x.toString() + '%  uploaded'),
                          );
                        }),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enableDrag: true,
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 8.0),
                height: height * .05,
                width: width * .35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11.1),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 9.0,
                        offset: Offset(0, 10),
                      )
                    ]),
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
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: height * .02,
        ),
        Text('Video count : $videoCount'),
        GestureDetector(
          onTap: (){
            DioHelper.uploadSection(sectionVideos: uploadController.videoIds, sectionName: sectionController.text, sectionArticles: articleController.text).then((value) {
              messageToast(msg: 'section uploaded', color: Colors.green);
              uploadController.videoIds.clear();
              uploadController.sectionIds.add(value.data['section_id']);
              print('cleared');
            }).catchError((onError){
              print('errorr isdsnskd\n');
              print(onError.toString());
            });
            print(uploadController.videoIds[1]);
          },
          child: Container(
           color: kPrimaryColor,
           margin: EdgeInsets.symmetric(horizontal: width*.25),
           height: height*.07,
            child:const Center(child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('upload the section',style: TextStyle(color: Colors.white),))),
          ),
        ),
      ],
    );
  }
}


