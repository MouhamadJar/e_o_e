import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/about_us.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:e_o_e/screens/main_setting.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/sign/light_theme/login_screen.dart';
import 'package:e_o_e/screens/teacher/teacher.dart';
import 'package:e_o_e/screens/walet.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile2.dart';
import 'package:e_o_e/student/xd_shopping_cart1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../constants.dart';
import 'favorite.dart';

class XDProfile extends StatefulWidget {
  XDProfile({
    Key? key,
    required this.profileData,
  }) : super(key: key);
  final Map<String, dynamic> profileData;

  @override
  State<XDProfile> createState() => _XDProfileState();
}

class _XDProfileState extends State<XDProfile> {
  @override
  Widget build(BuildContext context) {
    Future<dynamic> courses =
    getInstructorProfile(id: widget.profileData['id']);
    final width = MediaQuery
        .of(context)
        ?.size
        .width ?? double.nan;
    final height = MediaQuery
        .of(context)
        ?.size
        .height ?? double.nan;
    Drawer myDrawer = Drawer(
      child: FutureBuilder(
        future: courses,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError)
            return Center(child: Text(snapshot.error.toString()));
          if (snapshot.hasData) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xff085cb1),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .65,
                          decoration: const BoxDecoration(
                            color: Color(0xff085cb1),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: width * .11,
                                backgroundImage: NetworkImage(BASEURL + snapshot
                                    .data['instructor']['profile_image']),
                              ),
                              SizedBox(width: width * .01),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      SizedBox(width: width * .01),
                                      Row(
                                        children: [
                                          const AutoSizeText(
                                            'Hello',
                                            style: TextStyle(
                                              fontFamily: kFontFamily,
                                              color: Color(0xFFFEC668),
                                            ),
                                            maxFontSize: 16,
                                            minFontSize: 8,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SvgPicture.asset(
                                              "assets/icons8-waving-hand-light-skin-tone-96.svg"),
                                        ],
                                      ),
                                      Text(
                                        snapshot
                                            .data['instructor']['user']['username'],
                                        style: const TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      Container(
                                        width: width * .4,
                                        height: height * .03,
                                        child: AutoSizeText(
                                          snapshot
                                              .data['instructor']['user']['email'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: kFontFamily,
                                          ),
                                          maxFontSize: 12,
                                          minFontSize: 8,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFFEC668),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .65,
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              const Divider(
                                color: Color(0xFFFEC668),
                                height: 7,
                                indent: 25,
                                endIndent: 25,
                              ),
                              SizedBox(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.04,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    if (snapshot
                                        .data['instructor']['website_role'] ==
                                        "instructor") {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TeacherPage(),
                                        ),
                                      );
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => StudentPage(),
                                        ),
                                      );
                                    }
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.091,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        height: 25,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/user (6).svg",
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            const Text(
                                              "Profile",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainSetting(),
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        child: Container(
                                          height: 25,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .55,
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                "assets/settings (5).svg",
                                                height: 20,
                                              ),
                                              const SizedBox(
                                                width: 7,
                                              ),
                                              const Text(
                                                "Settings",
                                                style: TextStyle(
                                                  fontFamily: kFontFamily,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Wallet(),
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        height: 25,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/wallet (1).svg",
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            const Text(
                                              "Wallet",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    Get.snackbar('', 'coming soon...');
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 25,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/bubble-chat (3).svg",
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            const Text(
                                              "Chat",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const AboutUs(),
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.11,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        height: 25,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/information-button (1).svg",
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            const Text(
                                              "About us",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RoomsScreen(),
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.091,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        height: 25,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/classroom (2).svg",
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            const Text(
                                              "Rooms",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    GetStorage().write(
                                      'token',
                                      'noToken',
                                    );
                                    navigateAndFinish(context, LoginScreen());
                                  });
                                },
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.091,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * .55,
                                        height: 25,
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.logout_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "Logout",
                                              style: TextStyle(
                                                fontFamily: kFontFamily,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },),
    );
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.01,
              ),
              IconButton(
                icon: SvgPicture.asset("assets/add-to-cart (4).svg"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => XDShoppingCart1(),
                    ),
                  );
                },
              ),
              SizedBox(
                width: width * 0.06,
              ),
              Image.asset("assets/Group 1107.png"),
              SizedBox(width: width * 0.09),
              InkWell(
                child: SvgPicture.asset("assets/favorite (2).svg"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavoriteCourses(),
                    ),
                  );
                },
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => XDCategories1()),
                  );
                },
                icon: SvgPicture.asset("assets/category (3).svg"),
              ),
            ],
          ),
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset("assets/list (2).svg"),
            );
          }),
        ),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: width * .12,
                      backgroundImage: NetworkImage(widget.profileData['profile_image'].toString()=='null' ? DEFAULTIMAGE
                          : BASEURL + widget.profileData['profile_image']),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          widget.profileData['user']['username'],
                          style: const TextStyle(
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 20,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        AutoSizeText(
                          widget.profileData['user']['email'],
                          style: const TextStyle(
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          width: height * 0.04,
                        ),
                        AutoSizeText(
                          widget.profileData['age'].toString(),
                          style: const TextStyle(
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 16,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/graduation-cap.svg"),
                            SizedBox(width: width * 0.01),
                            Container(
                              height: height * .05,
                              width: width * .5,
                              child: Center(
                                child: AutoSizeText(
                                  widget.profileData['education'],
                                  style: const TextStyle(
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.07),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/category (2).svg"),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: height * .03,
                        width: width * .37,
                        child: const Center(
                          child: AutoSizeText(
                            "Favorite category :",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                            maxFontSize: 20,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        height: height * .03,
                        width: width * .3,
                        child: Center(
                          child: AutoSizeText(
                            widget.profileData['favourite_category']
                            ['category_name'],
                            style: const TextStyle(
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 20,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/certificate (1).svg"),
                    SizedBox(
                      width: width * 0.012,
                    ),
                    Container(
                      height: height * .033,
                      width: width * .25,
                      child: const Center(
                        child: AutoSizeText(
                          "Certficates :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontWeight: FontWeight.bold,
                          ),
                          maxFontSize: 20,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                  ],
                ),
                Container(
                  height: height * .15,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: AutoSizeText(
                            widget.profileData['certificates'][index]
                            ['certificate_description'],
                            minFontSize: 8,
                            maxFontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: widget.profileData['certificates'].length),
                ), //My certificates LV
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  height: height * 0.1,
                  width: width * 0.91,
                  // color: Colors.grey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.facebook_outlined,
                        color: const Color(0xFF2E4D72),
                        size: width * 0.07,
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.31,
                        //color: Colors.grey,
                        child: const Center(
                          child: AutoSizeText(
                            "Facebook link:",
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
                      Container(
                        height: height * 0.04,
                        width: width * 0.41,
                        //color: Colors.grey,
                        child: Center(
                          child: AutoSizeText(
                            widget.profileData['facebook_link'],
                            style: const TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 2020,
                            ),
                            maxFontSize: 18,
                            minFontSize: 12,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
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
                        height: height * .457,
                        color: Colors.grey[200],
                        child: FutureBuilder(
                          future: courses,
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return Center(
                                  child: Text(snapshot.error.toString()));
                            }
                            if (snapshot.hasData) {
                              dynamic allCourses = snapshot.data;
                              List<dynamic> course = allCourses['courses'];
                              return ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) =>
                                      MyCourse(
                                          height: height,
                                          width: width,
                                          videoImage: BASEURL +
                                              course[index]['course_image']
                                                  .toString(),
                                          courseInstructor: course[index]['course_instructor']['user']['username']
                                              .toString(),
                                          courseInstructorEducation:
                                          course[index]['course_instructor']['job_role']
                                              .toString(),
                                          courseBadges: course[index]['badges']
                                              .toString(),
                                          coursePrice: course[index]['course_price']
                                              .toString(),
                                          id: course[index]['course_id'],
                                          courseRating: course[index]['course_rate']
                                              .toString()),
                                  separatorBuilder: (context, index) =>
                                      Divider(
                                        color: kPrimaryColor,
                                      ),
                                  itemCount: course.length);
                            }
                            return SpinKitRotatingCircle(
                              color: kPrimaryColor,
                              size: 50.0,
                            );
                          },
                        ),
                      ), //My courses LV
                    ],
                  ),
                ), //My courses LV
                SizedBox(
                  height: height * 0.1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => XDProfile2(oldData: courses,),
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width * 0.4,
                    decoration: const BoxDecoration(
                        color: Color(0xFF0E564E),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0xFF0E564E),
                          ),
                        ]),
                    child: const Center(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
