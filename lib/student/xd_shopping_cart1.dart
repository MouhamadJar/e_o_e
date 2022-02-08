import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/models/cart/cart_model.dart';
import 'package:e_o_e/models/instructor/course_model.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/screens/about_us.dart';
import 'package:e_o_e/screens/course_page.dart';
import 'package:e_o_e/screens/main_setting.dart';
import 'package:e_o_e/screens/notification.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/xd_categories1.dart';
import 'package:e_o_e/student/student.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../component/components.dart';
import '../constants.dart';
import '../network/online/http.dart';
import 'favorite.dart';

class XDShoppingCart1 extends StatefulWidget {
  XDShoppingCart1({
    Key? key,
  }) : super(key: key);

  @override
  State<XDShoppingCart1> createState() => _XDShoppingCart1State();
}

class _XDShoppingCart1State extends State<XDShoppingCart1> {
  @override
  Widget build(BuildContext context) {
    Future<dynamic> cartItems = cartItem();
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    Drawer myDrawer = Drawer(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff085cb1),
          body: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff085cb1),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/Image 7.png"),
                        radius: width * .11,
                      ),
                      SizedBox(width: width * .01),
                      Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Row(
                                children: [
                                  const Text(
                                    'Hello',
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      color: Color(0xFFFEC668),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      "assets/icons8-waving-hand-light-skin-tone-96.svg"),
                                ],
                              ),
                              const Text(
                                "Maggi Vega",
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                "maggi.vega@gmail.com",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: kFontFamily,
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
                Column(
                  children: [
                    const SizedBox(height: 10),
                    const Divider(
                      color: Color(0xFFFEC668),
                      height: 7,
                      indent: 25,
                      endIndent: 25,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudentPage(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: MediaQuery.of(context).size.width * 0.75,
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
                                        fontSize: 20,
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
                              builder: (context) => MainSetting(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: MediaQuery.of(context).size.width * 0.75,
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
                                        fontSize: 20,
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
                              builder: (context) => NotificationScreen(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: 25,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/notification (4).svg",
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Notification",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      color: Colors.white,
                                      fontSize: 20,
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
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: MediaQuery.of(context).size.width * 0.75,
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
                                      fontSize: 20,
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
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
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
                                      fontSize: 20,
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
                        height: MediaQuery.of(context).size.height * 0.091,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
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
                                      fontSize: 20,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
    List<Widget> cart = [
      Row(
        children: [
          const Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.05),
            height: height * 0.05,
            width: width * 0.6,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search for your course",
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: kFontFamily,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  )),
            ),
          ),
        ],
      ),
      SizedBox(
        height: height * 0.015,
      ),
      SizedBox(
        height: height * 0.003,
      ),
      SizedBox(
        height: height * 0.003,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        drawer: myDrawer,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.01,
              ),
              CircleAvatar(
                child: SvgPicture.asset("assets/add-to-cart (5).svg"),
                radius: 25,
              ),
              SizedBox(
                width: width * 0.06,
              ),
              Image.asset("assets/Group 1107.png"),
              SizedBox(width: width * 0.09),
              InkWell(
                child: SvgPicture.asset("assets/favorite (2).svg"),
                onTap: () {
                  Navigator.pushReplacement(
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
                  Navigator.pushReplacement(
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
        body: FutureBuilder(
          future: cartItems,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            if (snapshot.hasData) {
              dynamic items = snapshot.data;
              print(items.toString());
              return SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: height,
                  width: width,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      if (items.isEmpty) {
                        return SizedBox(
                          height: height * .85,
                          width: width,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.smiley_fill,
                                      color: Colors.yellow,
                                      size: 50,
                                    ),
                                    Text("Nothing in cart"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return MyCartItem(
                          height: height,
                          width: width,
                          coursePrice: items[index]['cart_item']['course']
                                  ["course_price"]
                              .toString(),
                          courseName: items[index]['cart_item']['course']
                                  ['course_name']
                              .toString(),
                          courseStudents: items[index]['cart_item']['course']
                                  ['course_students']
                              .toString(),
                          courseID: items[index]['cart_item']['course']
                                  ['course_id']
                              .toString(),
                          courseBadges: items[index]['cart_item']['course']
                                  ['badges']
                              .toString(),
                          courseRate: items[index]['cart_item']['course']
                                  ['course_rate']
                              .toString(),
                          courseImage: BASEURL +
                              items[index]['cart_item']['course']
                                      ['course_image']
                                  .toString(),
                          courseInstructorName: items[index]['cart_item']
                                      ['course']['course_instructor']['user']
                                  ['username']
                              .toString(),
                        );
                      }
                    },
                    itemCount: items.length == 0 ? 1 : items.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        thickness: height * .001,
                        height: height * .03,
                        indent: width * .05,
                        endIndent: width * .05,
                        color: kPrimaryColor,
                      );
                    },
                  ),
                ),
              );
            }
            return myLoader();
          },
        ),
      ),
    );
  }
}
