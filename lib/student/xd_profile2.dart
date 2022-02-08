import 'dart:convert';
import 'dart:io';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:dio/dio.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as GETX;
import 'package:image_picker/image_picker.dart';
import '../component/components.dart';
import '../constants.dart';

class XDProfile2 extends StatefulWidget {
  XDProfile2({
    Key? key,
    required this.oldData,
  }) : super(key: key);
  Future<dynamic> oldData;

  @override
  State<XDProfile2> createState() => _XDProfile2State();
}

class _XDProfile2State extends State<XDProfile2> {
  File image = File('');
  bool selected = false;
  String category = 'select';
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var ageController = TextEditingController();
  var educationController = TextEditingController();
  var certificateController = TextEditingController();
  var jobRoleController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmNewPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: FutureBuilder(
            future: widget.oldData,
            builder: (context, AsyncSnapshot<Object?> snapshot) {
              dynamic oldProfile = snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: SvgPicture.asset("assets/back (1).svg"),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Color(0xFF085CB1),
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          InkWell(
                            child: SvgPicture.asset("assets/Path 113.svg"),
                            onTap: () {
                              updateProfile(
                                  first_name: firstNameController.text.toString(),
                                  last_name: lastNameController.text.toString(),
                                  email: emailController.text.toString(),
                                  password: passwordController.text.toString(),
                                  newPassword: newPasswordController.text.toString(),
                                  age: ageController.text.toString(),
                                  education: educationController.text.toString(),
                                  favourite_category_id: categoriesIds[category].toString(),
                                  job_role: jobRoleController.text.toString()).then((value) {
                                    messageToast(msg: 'Done !', color: Colors.green);
                                    print(jsonDecode(value.body).toString());
                              }).catchError((onError){
                                print('error is : \n' + onError.toString());
                                messageToast(msg: 'Please pass vaild data', color: Colors.red);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              GETX.Get.dialog(Image.file(File(image.path)));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 55,
                              backgroundImage: NetworkImage(BASEURL +
                                          oldProfile['instructor']
                                                  ['profile_image']
                                              .toString() ==
                                      'null'
                                  ? DEFAULTIMAGE
                                  : BASEURL +
                                      oldProfile['instructor']['profile_image']
                                          .toString()),
                            ),
                          ),
                          SizedBox(width: width * 0.15),
                          Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  await ImagePicker()
                                      .pickImage(source: ImageSource.gallery)
                                      .then((value) async {
                                    image = File(value!.path);
                                    messageToast(
                                        msg: 'image will upload',
                                        color: Colors.green);
                                    DioHelper.uploadPhoto(formData: {
                                      "profile_image":
                                          await MultipartFile.fromFile(
                                              image.path),
                                    }).then((value) {
                                      messageToast(
                                        msg: 'image uploaded successfully',
                                        color: Colors.green,
                                      );
                                    });
                                  }).catchError((onError) {
                                    print('error is \n' + onError.toString());
                                    messageToast(
                                        msg: 'Selection canceled',
                                        color: Colors.red);
                                  });
                                },
                                child: Container(
                                  height: height * 0.0455,
                                  width: width * 0.33,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                      border: Border.all(
                                        color: const Color(0xFF0E564E),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Color(0xFF0E564E),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.upload_outlined,
                                        color: const Color(0xFF0E564E),
                                      ),
                                      SizedBox(
                                        width: width * 0.001,
                                      ),
                                      SizedBox(
                                        width: width * 0.24,
                                        child: const AutoSizeText(
                                          "Update photo",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 130,
                                            color: Color(0xFF0E564E),
                                          ),
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                onTap: () {
                                  DioHelper.uploadPhoto(
                                          formData: {'profile_image': ''})
                                      .then((value) {
                                    messageToast(
                                        msg: 'deleted successfully',
                                        color: Colors.red);
                                  });
                                },
                                child: Container(
                                  height: height * 0.0455,
                                  width: width * 0.33,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                      border: Border.all(
                                        color: const Color(0xFFCE0505),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Color(0xFF0E564E),
                                        ),
                                      ]),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.delete_outlined,
                                        color: Color(0xFFCE0505),
                                      ),
                                      //SizedBox(width:width*0.001,),
                                      SizedBox(
                                        child: AutoSizeText(
                                          "Delete photo",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            fontSize: 130,
                                            color: Color(0xFFCE0505),
                                          ),
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "First Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: firstNameController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']['user']
                                        ['first_name']
                                    .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Last Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: lastNameController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']['user']
                                        ['last_name']
                                    .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "age",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.3,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: ageController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    oldProfile['instructor']['age'].toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Education",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: educationController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']['education']
                                    .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Favorite Category ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.53,
                            //   padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: Expanded(
                              child: AwesomeDropDown(
                                selectedItem: category,
                                onDropDownItemClick: (value) {
                                  setState(() {
                                    category = value;
                                  });
                                },
                                padding: 0,
                                dropDownList: categories,
                                elevation: 0,
                                dropDownTopBorderRadius: 0,
                                dropDownBorderRadius: 0,
                                dropDownBottomBorderRadius: 0,
                                isPanDown: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Certificate ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: certificateController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']
                                                ['certificates']
                                            .toString() ==
                                        '[]'
                                    ? 'Add certificates '
                                    : oldProfile['instructor']['certificates']
                                            [0]['certificates_description']
                                        .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Date ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.23,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Day",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.05,
                            width: width * 0.23,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Month",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.05,
                            width: width * 0.23,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Year",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Job Role ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: jobRoleController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']['job_role']
                                    .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "E-mail ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: emailController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: oldProfile['instructor']['user']
                                        ['email']
                                    .toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Password ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.63,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(
                                  color: Color(0xFF0E564E),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFF0E564E),
                                  ),
                                ]),
                            child: TextField(
                              controller: passwordController,
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "maggi.vega@gmail.com",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: kFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "New password ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Column(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.6,
                                padding: const EdgeInsets.only(left: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    border: Border.all(
                                      color: Color(0xFF0E564E),
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0xFF0E564E),
                                      ),
                                    ]),
                                child: TextField(
                                  controller: newPasswordController,
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "maggi.vega@gmail.com",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Container(
                                height: height * 0.05,
                                width: width * 0.6,
                                padding: const EdgeInsets.only(left: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    border: Border.all(
                                      color: Color(0xFF0E564E),
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0xFF0E564E),
                                      ),
                                    ]),
                                child: TextField(
                                  controller: confirmNewPasswordController,
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "maggi.vega@gmail.com",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: kFontFamily,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
