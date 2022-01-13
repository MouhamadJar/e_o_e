import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    bool check1=true;
    bool check2=false;
    bool check3=true;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      "Settings",
                      style: TextStyle(
                        color: Color(0xFF085CB1),
                        fontSize: 20,
                        fontFamily: kFontFamily,
                      ),
                    ),
                    InkWell(
                      child: SvgPicture.asset("assets/Path 113.svg"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              MyColumn(width: width, height: height,text: "Payment method"),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.only(left : width*0.02),
                child: Row(
                  children: [
                    check1 ? InkWell(child: checkedBox(height: height, width: width),onTap: (){setState(() {
                      check1=!check1;
                    });},): InkWell(child: unCheckedBox(height: height, width: width),onTap: (){setState(() {
                      check1=!check1;
                    });},),
                    SizedBox(width : width*0.02),
                    const Text("Show my saved payment methods. ",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,
                         fontFamily: kFontFamily,
                       ),
                     ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyColumn(width: width, height: height,text: "Notification"),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.only(left : width*0.02),
                child: Row(
                  children: [
                    check2 ? InkWell(child: checkedBox(height: height, width: width),onTap: (){setState(() {
                      check2=!check2;
                    });},): InkWell(child: unCheckedBox(height: height, width: width),onTap: (){setState(() {
                      check2=!check2;
                    });},),
                    SizedBox(width : width*0.02),

                    const Text("Show my saved payment methods. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.only(left : width*0.02),
                child: Row(
                  children: [
                    check1 ? InkWell(child: checkedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},): InkWell(child: unCheckedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},),
                    SizedBox(width : width*0.02),
                    const Text("Show my saved payment methods. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyColumn(width: width, height: height,text: "History"),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.only(left : width*0.02),
                child: Row(
                  children: [
                    check1 ? InkWell(child: checkedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},): InkWell(child: unCheckedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},),
                    SizedBox(width : width*0.02),
                    const Text("Show my saved payment methods. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyColumn(width: width, height: height,text: "Privacy"),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:  EdgeInsets.only(left : width*0.02),
                child: Row(
                  children: [
                    check1 ? InkWell(child: checkedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},): InkWell(child: unCheckedBox(height: height, width: width),onTap: (){setState(() {
                      check3=!check3;
                    });},),
                    SizedBox(width : width*0.02),
                    const Text("Show my saved payment methods. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyColumn(width: width, height: height,text: "Close Account"),
              SizedBox(
                height: height * 0.02,
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text("""If you close your account, you will be unsubscribed
form all your courses, and will lose access forever.""",style: TextStyle(
                  color: Colors.black,
                  fontFamily: kFontFamily,
                  fontSize: 15
                ),),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.7,top: height*0.04),
                child: const Text("Close Account",style: TextStyle(
                    color: Colors.red,
                    fontFamily: kFontFamily,
                    fontSize: 15
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
