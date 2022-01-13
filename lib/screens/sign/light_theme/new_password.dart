import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../home_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height:  height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/reset password 3.png"),
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: width*0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.3),
                    child: const AutoSizeText(
                      "Reset your password",
                      style: TextStyle(fontFamily: kFontFamily, fontSize: 100),
                      maxFontSize: 16,
                      minFontSize: 14,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: height * 0.01,left: width*0.02),
                    width: width*0.6,
                    child: const AutoSizeText(
                      "you will receive an email with code to allowing you to reset your password",
                      style: TextStyle(fontFamily: kFontFamily, fontSize: 100),
                      maxFontSize: 14,
                      minFontSize: 12,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    height: height * 0.091,
                    width: width * 0.8,
                    margin: EdgeInsets.only(left: width * 0.07),
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: kInputDecoration.copyWith(
                        icon: SvgPicture.asset(
                          "assets/promo (1).svg",
                          height:  height*0.04,
                        ),
                        labelText: "Enter your code",
                        labelStyle:
                        const TextStyle(fontFamily: 'Cambo-Regular'),
                      ),
                    ),
                  ),
                   SizedBox(
                    height:  height*0.005,
                  ),
                  Container(
                    height: height * 0.091,
                    width: width * 0.8,
                    margin: EdgeInsets.only(left: width * 0.07),
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: kInputDecoration.copyWith(
                        icon: SvgPicture.asset(
                          "assets/padlock (3).svg",
                          height:  height*0.04,
                        ),
                        labelText: "Enter the new password",
                        labelStyle:
                        const TextStyle(fontFamily: 'Cambo-Regular'),
                      ),
                    ),
                  ),
                   SizedBox(
                    height:  height*0.005,
                  ),
                  Container(
                    height: height * 0.091,
                    width: width * 0.8,
                    margin: EdgeInsets.only(left: width * 0.07),
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: kInputDecoration.copyWith(
                        icon: SvgPicture.asset(
                          "assets/padlock (2).svg",
                          height:  height*0.04,
                        ),
                        labelText: "confirm new password",
                        labelStyle:
                        const TextStyle(fontFamily: 'Cambo-Regular'),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: height*0.02,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.2865, top: height*0.07),
                    child: InkWell(
                      onTap: () {Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );},
                      child: SvgPicture.asset(
                        "assets/Group 1123.svg",
                        width: width*0.05,
                        height: height*0.08,
                        placeholderBuilder: (_) =>
                        const CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
