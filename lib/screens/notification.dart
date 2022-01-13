import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
   List notify = [

     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     Container(
       decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.blueGrey,
                 blurRadius: 7
             ),
           ]
       ),
       margin:  EdgeInsets.only(top: height*0.015),
       height: height * 0.09,
       width: width * 0.93,
       child: Row(
         mainAxisAlignment:MainAxisAlignment.start ,
         children: [
           SvgPicture.asset(
             "assets/dry-clean (2).svg",
             height: 12,
           ),
           SizedBox(
             width: width * 0.04,
           ),
           Container(
             height: height * 0.09,
             width: width * 0.81,
             child: const AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 1300,
                 fontFamily: kFontFamily,
               ),
               maxFontSize: 16,
               minFontSize: 10,
             ),
           ),
         ],
       ),
     ),
     SizedBox(height :height*0.2),
   ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Notification",
                      style: TextStyle(
                        color: Color(0xFF085CB1),
                        fontSize: 20,
                        fontFamily: kFontFamily,
                      ),
                    ),
                    InkWell(
                      child: SvgPicture.asset(""),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                margin : EdgeInsets.only(left: width*0.011),
                height: height,
                width: width,
//                    color: Colors.grey,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: notify.length,
                    itemBuilder: (context , index) => notify[index],
                    padding:  EdgeInsets.all(height * 0.01,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
