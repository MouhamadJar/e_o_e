import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/teacher/teacher.dart';
import 'package:e_o_e/screens/teacher/xd_instructor_courses.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'package:get/get.dart';

import '../about_us.dart';
import '../main_setting.dart';
import '../notification.dart';
import '../rooms.dart';
import '../xd_categories1.dart';
import 'models/models.dart';


class OverView extends StatefulWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;


    List<ReviewerInfo> reviews =[
      ReviewerInfo(reviewerImg: "assets/person.png", reviewerName: "Name of Reviewer", reviewerComment:  "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",),
      ReviewerInfo(reviewerImg: "assets/person.png", reviewerName: "Name of Reviewer", reviewerComment:  "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",),
      ReviewerInfo(reviewerImg: "assets/person.png", reviewerName: "Name of Reviewer", reviewerComment:  "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",),
      ReviewerInfo(reviewerImg: "assets/person.png", reviewerName: "Name of Reviewer", reviewerComment:  "   (Even) more (optional) exercises with available solution,especially involving external libraries. No complaint here, just thinking what would have made it even better.Thank you for a solid, well documented course. All the best!",),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: width * 0.033,
              ),
              GestureDetector(
                onTap : (){Get.off(XDInstructorCourses());},
                child: SvgPicture.asset("assets/online-course (4).svg"),
              ),
              SizedBox(
                width: width * 0.09,
              ),
              Image.asset("assets/Group 1107.png"),
              SizedBox(width: width * 0.13),
              GestureDetector(
                onTap: (){Get.off(OverView(),);},
                child: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 20,
                    child: Center(child: SvgPicture.asset("assets/file (2).svg",height: 19,))),
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
          leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset("assets/list (2).svg"),
                );
              }
          ),
        ),
        drawer: Drawer(
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
                            radius: 50,
                          ),
                          const SizedBox(width: 11.0),
                          Column(
                            children: [
                              const SizedBox(
                                height: 32,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 15),
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
                                  builder: (context) =>const TeacherPage(),
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
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
               Container(
                 margin: EdgeInsets.all(width*0.03),
                 height: height*0.04,
                 width: width*0.3,
//             color: Colors.grey,
                 child: AutoSizeText(
                    "OverView".toUpperCase(),
                  style:const TextStyle(
                    color: Color(0xFFF67D20),
                    fontSize: 202020,
                    fontFamily: kFontFamily,
                  ),
                    maxFontSize: 20,
                  maxLines: 1,
                  minFontSize: 12,
                    ),
               ),
               Padding(
                 padding:  EdgeInsets.only(left:width*0.02),
                 child: Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/dollar.svg",height: height*0.033,),
                        Container(
                          height: height*0.04,
                          width: width*0.3,
//             color: Colors.grey,
                          child:const Center(
                            child: AutoSizeText(
                              "Total Income",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 202020,
                                fontFamily: kFontFamily,
                              ),
                              maxFontSize: 20,
                              maxLines: 1,
                              minFontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height*0.03,
                          width: width*0.5,
//                      color: Colors.grey,
                          child:const AutoSizeText(
                            "Your Total Income Is 500.000 Sp ,",
                            style: TextStyle(

                              color: Color(0xFF9504B3),
                              fontSize: 202020,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 20,
                            maxLines: 1,
                            minFontSize: 12,
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: width*0.49,
//                      color: Colors.grey,
                          child:const AutoSizeText(
                            "The Plateform Has 100.000 Sp .",
                            style: TextStyle(
                              color: Color(0xFF9504B3),
                              fontSize: 202020,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 20,
                            maxLines: 1,
                            minFontSize: 12,
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: width*0.5,
//                      color: Colors.grey,
                          child:const AutoSizeText(
                            "So Your Final Income 400.000 Sp. ",
                            style: TextStyle(

                              color: Color(0xFF9504B3),
                              fontSize: 202020,
                              fontFamily: kFontFamily,
                            ),
                            maxFontSize: 20,
                            maxLines: 1,
                            minFontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
              ),
               ),
               Container(
                 width: width,
                 height: height*0.4,
                 margin: EdgeInsets.all(width*0.02),
                 decoration:const BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                      color: Colors.grey,
                       blurRadius: 11,
                     )
                   ]
                 ),
                 child: LayoutBuilder(
                   builder: (context,size) {
                     return Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Container(
                          padding:  EdgeInsets.only(left:width*0.5),
                          child: Row(
                            children: [
                               SizedBox(
                                height:height*0.06,
                                width: width*0.2,
                                child:const Center(child:  AutoSizeText("select time")),
                              ),
                              DropdownButton<String>(
                                //isExpanded: true,
                                style:const TextStyle(
                                  fontFamily: kFontFamily,
                                  color: Colors.black,
                                ),
                                items:const [
                                  DropdownMenuItem(child: Text('All times') , value:'All times',  ),
                                  DropdownMenuItem(child: Text('Last month'), value:'Last month',),
                                  DropdownMenuItem(child: Text('Last week') , value:'Last week',  ),
                                  DropdownMenuItem(child: Text('Today')     , value:'Today',),
                                ],
                                onChanged: (value){setState(() {                                 }
                                  );//setState
                                },
                              ),
                            ],
                          ),
              ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               decoration:const BoxDecoration(
                                 color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.blueGrey,
                                       blurRadius: 2,
                                     )
                                   ]
                               ),
                               height: size.maxHeight*0.3,
                               width: size.maxWidth*0.45,
                               child: Row(
                                 children: [
                                   Container(
                                     height: size.maxHeight*0.25,
                                     width: size.maxWidth*0.2,
                                     decoration:const BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("assets/bamdad-norouzian-dxedAj3puxY-unsplash.png"),
                                         fit: BoxFit.fill,
                                       )
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(

                                       children:const [
                                            AutoSizeText(
                                              "course name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                            AutoSizeText(
                                              "50,000 sp",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                               decoration:const BoxDecoration(
                                 color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.blueGrey,
                                       blurRadius: 2,
                                     )
                                   ]
                               ),
                               height: size.maxHeight*0.3,
                               width: size.maxWidth*0.45,
                               child: Row(
                                 children: [
                                   Container(
                                     height: size.maxHeight*0.25,
                                     width: size.maxWidth*0.2,
                                     decoration:const BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("assets/bamdad-norouzian-dxedAj3puxY-unsplash.png"),
                                         fit: BoxFit.fill,
                                       )
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(

                                       children:const [
                                            AutoSizeText(
                                              "course name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                            AutoSizeText(
                                              "50,000 sp",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               decoration:const BoxDecoration(
                                 color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.blueGrey,
                                       blurRadius: 2,
                                     )
                                   ]
                               ),
                               height: size.maxHeight*0.3,
                               width: size.maxWidth*0.45,
                               child: Row(
                                 children: [
                                   Container(
                                     height: size.maxHeight*0.25,
                                     width: size.maxWidth*0.2,
                                     decoration:const BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("assets/bamdad-norouzian-dxedAj3puxY-unsplash.png"),
                                         fit: BoxFit.fill,
                                       )
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(

                                       children:const [
                                            AutoSizeText(
                                              "course name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                            AutoSizeText(
                                              "50,000 sp",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                               decoration:const BoxDecoration(
                                 color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.blueGrey,
                                       blurRadius: 2,
                                     )
                                   ]
                               ),
                               height: size.maxHeight*0.3,
                               width: size.maxWidth*0.45,
                               child: Row(
                                 children: [
                                   Container(
                                     height: size.maxHeight*0.25,
                                     width: size.maxWidth*0.2,
                                     decoration:const BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("assets/bamdad-norouzian-dxedAj3puxY-unsplash.png"),
                                         fit: BoxFit.fill,
                                       )
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(

                                       children:const [
                                            AutoSizeText(
                                              "course name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                            AutoSizeText(
                                              "50,000 sp",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                            ),
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ],
                       crossAxisAlignment: CrossAxisAlignment.start,
                     );
                   }
                 ),
               ),
               Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/checklist (1).svg",height: height*0.033,),
                    Container(
                      height: height*0.04,
                      width: width*0.33,
//             color: Colors.grey,
                      child:const Center(
                        child:  AutoSizeText(
                          "Total Enrollment",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 202020,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 20,
                          maxLines: 1,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                width: width,
                height: height*0.45,
                margin: EdgeInsets.all(width*0.02),
                decoration:const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 11,
                      )
                    ]
                ),
                child: LayoutBuilder(
                    builder: (context,size) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding:  EdgeInsets.only(left:width*0.5),
                            child: Row(
                              children: [
                                SizedBox(
                                  height:height*0.06,
                                  width: width*0.2,
                                  child:const Center(child:  AutoSizeText("select time")),
                                ),
                                DropdownButton<String>(
                                  //isExpanded: true,
                                  style:const TextStyle(
                                    fontFamily: kFontFamily,
                                    color: Colors.black,
                                  ),
                                  items:const [
                                    DropdownMenuItem(child: Text('All times') , value:'All times',  ),
                                    DropdownMenuItem(child: Text('Last month'), value:'Last month',),
                                    DropdownMenuItem(child: Text('Last week') , value:'Last week',  ),
                                    DropdownMenuItem(child: Text('Today')     , value:'Today',),
                                  ],
                                  onChanged: (value){setState(() { }
                                  );//setState
                                  },
                                ),
                              ],
                            ),
                          ),//dropdown
                          Container(
                            decoration:const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 2,
                                  )
                                ]
                            ),
                            height: size.maxHeight*0.3,
                            width: size.maxWidth*0.85,
                            child: Row(
                              children: [
                                Container(
                                  height: size.maxHeight*0.25,
                                  width: size.maxWidth*0.2,
                                  decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/person.png"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children:const [
                                      AutoSizeText(
                                        "Name of Student",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                      AutoSizeText(
                                        "Development",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children:const [
                                      AutoSizeText(
                                        "Name of course",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                      AutoSizeText(
                                        "50,000 sp",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration:const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 2,
                                  )
                                ]
                            ),
                            height: size.maxHeight*0.3,
                            width: size.maxWidth*0.85,
                            child: Row(
                              children: [
                                Container(
                                  height: size.maxHeight*0.25,
                                  width: size.maxWidth*0.2,
                                  decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/person.png"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children:const [
                                      AutoSizeText(
                                        "Name of Student",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                      AutoSizeText(
                                        "Development",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children:const [
                                      AutoSizeText(
                                        "Name of course",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                      AutoSizeText(
                                        "50,000 sp",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        maxFontSize: 20,
                                        minFontSize: 8,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      );
                    }
                ),
              ),
               Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/feedback.svg",height: height*0.033,),
                    Container(
                      height: height*0.04,
                      width: width*0.33,
//             color: Colors.grey,
                      child:const Center(
                        child:  AutoSizeText(
                          "Reviews",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 202020,
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 20,
                          maxLines: 1,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ReviewCard(
                width: width,
                height: height,
                reviewerName:reviews[0].reviewerName ,
                reviewerComment: reviews[0].reviewerComment,
                reviewerImg: reviews[0].reviewerImg,
              ),
              ReviewCard(
                width: width,
                height: height,
                reviewerName:reviews[0].reviewerName ,
                reviewerComment: reviews[0].reviewerComment,
                reviewerImg: reviews[0].reviewerImg,
              ),
              ReviewCard(
                width: width,
                height: height,
                reviewerName:reviews[0].reviewerName ,
                reviewerComment: reviews[0].reviewerComment,
                reviewerImg: reviews[0].reviewerImg,
              ),
              //  ListView.builder(
              //     itemCount: reviews.length,
              //     itemBuilder: (context , index){
              //       return ReviewCard(
              //         width: width,
              //         height: height,
              //         reviewerName:reviews[index].reviewerName ,
              //         reviewerComment: reviews[index].reviewerComment,
              //         reviewerImg: reviews[index].reviewerImg,
              //       );
              //     },
              // )
            ],
          ),
        ),
      ),
    );
  }
}

