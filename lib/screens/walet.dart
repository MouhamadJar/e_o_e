import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:e_o_e/screens/teacher/models/models.dart';
import 'package:e_o_e/student/xd_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'about_us.dart';
import 'main_setting.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;



    return SafeArea(
      child: Scaffold(
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
                              Get.snackbar('', 'coming soon...');
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            width: MediaQuery.of(context).size.width,
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
                              Navigator.pushReplacement(
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
                            Get.snackbar("Oh!", "you allready in wallet");
                          },
                          child: Container(
                            color: const Color(0xFFFEC668),
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
                              Navigator.pushReplacement(
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
                              Navigator.pushReplacement(
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
          child: Container(
            padding: EdgeInsets.all(width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {Navigator.pop(context);},
                      child: SvgPicture.asset(
                        "assets/back (1).svg",
                        width: width * 0.07,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.3),
                      width: width*0.2,
                      //color: Colors.grey,
                      height: height*0.05,
                      child:const Center(
                        child:  AutoSizeText(
                            "Wallet",
                          style: TextStyle(
                            color: Color(0xFF085CB1),
                            fontSize: 2020,
                            fontFamily: kFontFamily
                          ),
                          maxLines: 1,
                          maxFontSize: 24,
                          minFontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(width*.03),
                  //color: Colors.grey,
                  height: height*.2,
                  width: width*.9,
                  child: Center(
                    child: Image.asset(
                      "assets/folder (2).png",
                      isAntiAlias: true,
                      filterQuality: FilterQuality.high,
                      excludeFromSemantics: true,
                      matchTextDirection: true,
                    ),
                  ),
                  //child: ,
                ),
                Container(
                  margin: EdgeInsets.only(left: width*0.3,bottom: height*.04),
                  decoration: BoxDecoration(
                    color :const Color(0xFFCA5B5B),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  height: height*.06,
                  width: width*.35,
                  child:const Center(
                    child: AutoSizeText(
                      "0.00",
                      style: TextStyle(
                        fontSize: 2020,
                        fontFamily: kFontFamily,
                        color: Colors.white,
                      ),
                      maxFontSize: 24,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: width*.45,
                      height: height*.05,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Enter your region :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 0212,
                          ),
                          maxLines: 1,
                          maxFontSize: 18,
                          minFontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      width: width-width*.52,
                      height: height*.05,
                      child:  TextField(
                        decoration:const InputDecoration(
                          labelText: "your region",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          focusColor: Color(0xFF085CB1),
                          hoverColor: Color(0xFF085CB1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value){},
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*0.04),
                      width: width*.45,
                      height: height*.05,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Enter the transfer number :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 0212,
                          ),
                          maxLines: 1,
                          maxFontSize: 18,
                          minFontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height*0.04),
                      width: width-width*.52,
                      height: height*.05,
                      child:  TextField(
                        decoration:const InputDecoration(
                          labelText: "transfer number",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          focusColor: Color(0xFF085CB1),
                          hoverColor: Color(0xFF085CB1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value){},
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*0.04),
                      padding: EdgeInsets.only(top: height*0.01,left: width*.35 ),
                      width: width*.45,
                      height: height*.05,
                      //color: Colors.grey,
                      child:const AutoSizeText(
                        "to : ",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 0212,
                        ),
                        maxLines: 1,
                        maxFontSize: 18,
                        minFontSize: 10,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height*0.04),
                      width: width-width*.52,
                      height: height*.05,
                      child:  TextField(
                        decoration:const InputDecoration(
                          labelText: "receiver number",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          focusColor: Color(0xFF085CB1),
                          hoverColor: Color(0xFF085CB1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value){},
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*.04),
                      //color: Colors.grey,
                      height: height*.05,
                      width: width*0.4,
                      child: const Center(
                        child: AutoSizeText(
                          "Add the check photo : ",
                          maxFontSize: 22,
                          minFontSize: 12,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 2020 ,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: height*.025),
                    //   height: height*0.1,
                    //   width: width*.25,
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey,
                    //     borderRadius: BorderRadius.circular(25.0),
                    //   ),
                    //     child: _checkImage == null ?const Center(child:  Text("add your check photo"),):Image.file(_checkImage),
                    // ),
                    GestureDetector(
                      onTap: () async{//picImage;
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: height*.02,left: width*.03),
                        height: height*0.1,
                        width: width*.17,
                        decoration: BoxDecoration(
                          color: const Color(0xFF707070).withOpacity(0.55),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child:  Center(
                          child: Icon(
                              Icons.add,
                              size: width*.13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: width*.35,top: height*.02),
                    //color: Colors.grey,
                    height: height*.0350,
                    width: width*.6,
                    child: Row(
                      children: [
                        new Check(),
                        Container(
                          height: height*.035,
                          width: width*.45,
                          //color: Colors.red,
                          child:const Center(
                            child:  AutoSizeText(
                              "Do you want to cut off your wallet",
                              style:TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 2021,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              maxFontSize: 18,
                              minFontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

