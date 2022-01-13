import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class XDProfile2 extends StatelessWidget {
  XDProfile2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(child: SvgPicture.asset("assets/back (1).svg"),onTap: (){Navigator.pop(context);},),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Color(0xFF085CB1),
                        fontSize: 20,
                        fontFamily: kFontFamily,
                      ),
                    ),
                    InkWell(child: SvgPicture.asset("assets/Path 113.svg"),onTap: (){Navigator.pop(context);},),
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
                    const  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 55,
                      backgroundImage: AssetImage("assets/Image 8.png"),
                    ),
                    SizedBox(width:width*0.15),
                    Column(
                      children: [
                        Container(
                          height: height*0.0455,
                          width : width*0.33,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:const BorderRadius.all( Radius.circular(7),),
                              border:Border.all(color: const Color(0xFF0E564E),),
                              boxShadow:const [
                                BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                              ]
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.upload_outlined , color: const Color(0xFF0E564E),),
                              SizedBox(width:width*0.001,),
                              SizedBox(
                                width : width*0.24,
                                child: const AutoSizeText("Update photo",style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 130,
                                  color: Color(0xFF0E564E),
                                ),
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                  maxLines : 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.02,),
                        Container(
                          height: height*0.0455,
                          width : width*0.33,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:const BorderRadius.all( Radius.circular(7),),
                              border:Border.all(color: const Color(0xFFCE0505),),
                              boxShadow:const [
                                BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                              ]
                          ),
                          child: Row(
                            children:const [
                              Icon(Icons.delete_outlined,color:  Color(0xFFCE0505),),
                              //SizedBox(width:width*0.001,),
                              SizedBox(
                                child: AutoSizeText("Delete photo",style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 130,
                                  color: Color(0xFFCE0505),
                                ),
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                  maxLines : 1,
                                ),
                              )
                            ],
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "maggi",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: Border.all(color: Color(0xFF0E564E), ),
                        boxShadow:const [
                          BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                        ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "maggi",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "23",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Master Degree",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Flutter Developer",
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
                  children: [
                    const Text(
                      "Certficates ",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Master Degree",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Day",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: kFontFamily,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:width*0.02),
                    Container(
                      height: height * 0.05,
                      width: width * 0.23,
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Month",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: kFontFamily,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:width*0.02),
                    Container(
                      height: height * 0.05,
                      width: width * 0.23,
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Year",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: kFontFamily,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:width*0.02),
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Master Degree",
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
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
                      padding:const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(color: Color(0xFF0E564E), ),
                          boxShadow:const [
                            BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                          ]
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration:const InputDecoration(
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
                          padding:const EdgeInsets.only(left: 7),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:const BorderRadius.all(
                                Radius.circular(12),
                              ),
                              border: Border.all(color: Color(0xFF0E564E), ),
                              boxShadow:const [
                                BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                              ]
                          ),
                          child: TextField(
                            onChanged: (value){},
                            decoration:const InputDecoration(
                              border: InputBorder.none,
                              hintText: "maggi.vega@gmail.com",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: kFontFamily,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:height*0.01),
                        Container(
                          height: height * 0.05,
                          width: width * 0.6,
                          padding:const EdgeInsets.only(left: 7),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:const BorderRadius.all(
                                Radius.circular(12),
                              ),
                              border: Border.all(color: Color(0xFF0E564E), ),
                              boxShadow:const [
                                BoxShadow(blurRadius: 5,color: Color(0xFF0E564E),),
                              ]
                          ),
                          child: TextField(
                            onChanged: (value){},
                            decoration:const InputDecoration(
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
        ),
      ),
    );
  }
}
