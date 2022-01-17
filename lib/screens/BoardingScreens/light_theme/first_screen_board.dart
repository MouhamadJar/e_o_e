import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/sign/light_theme/login_screen.dart';
import 'package:e_o_e/screens/sign/light_theme/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class FirstBoardingScreen extends StatelessWidget {
  const FirstBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;

    Size size = MediaQuery.of(context).size;
    final controller = PageController(
      initialPage: 0,
    );
    final pageView = PageView(
      physics: ScrollPhysics().parent,
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/on boarding 1.png"),
                  fit: BoxFit.fill),
            ),
            width: width,
            height: height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 550),
                              curve: Curves.easeOutCubic);
                        },
                        child: Container(
                          margin: EdgeInsets.all(width * 0.03),
                          width: width * 0.25,
                          height: height * 0.042,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width * 0.7,
                    height: height * 0.3,
                    margin: EdgeInsets.only(top: height * 0.06),
                    padding: EdgeInsets.only(left: width * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AutoSizeText(
                          "title text",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                          ),
                          minFontSize: 12,
                          maxFontSize: 16,
                          overflow: TextOverflow.fade,
                        ),
                        AutoSizeText(
                          kLorem,
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                          ),
                          maxLines: 3,
                          minFontSize: 8,
                          maxFontSize: 24,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.23, top: height * 0.13),
                    child: Image.asset("assets/20944364.png"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.78, top: height * 0.05),
                    child: SvgPicture.asset("assets/Group 9810.svg"),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/on boarding 2.png"),
                  fit: BoxFit.fill),
            ),
            width: width,
            height: height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 650),
                          curve: Curves.easeOutCubic);
                    },
                    child: Container(
                      margin: EdgeInsets.all(width * 0.03),
                      width: width * 0.25,
                      height: height * 0.042,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.08, top: height * 0.16),
                    child: Image.asset("assets/8294.png"),
                  ),
                  Container(
                    width: width * 0.7,
                    height: height * 0.22,
                    margin: EdgeInsets.only(top: height * 0.22),
                    padding: EdgeInsets.only(left: width * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AutoSizeText(
                          "title text",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                          ),
                          minFontSize: 12,
                          maxFontSize: 24,
                          overflow: TextOverflow.fade,
                        ),
                        AutoSizeText(
                          kLorem,
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            color: Colors.black,
                          ),
                          maxLines: 3,
                          minFontSize: 8,
                          maxFontSize: 18,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.78,
                    ),
                    child: SvgPicture.asset("assets/Group 980.svg"),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/on boarding 3.png"),
                    fit: BoxFit.fill),
              ),
              height: height,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.1),
                    Container(
                      width: width * 0.7,
                      height: height * 0.22,
                      margin: EdgeInsets.only(left: width * 0.27),
                      padding: EdgeInsets.only(left: width * 0.07),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AutoSizeText(
                            "title text",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              color: Colors.black,
                            ),
                            minFontSize: 12,
                            maxFontSize: 24,
                            overflow: TextOverflow.fade,
                          ),
                          AutoSizeText(
                            kLorem,
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              color: Colors.black,
                            ),
                            maxLines: 3,
                            minFontSize: 8,
                            maxFontSize: 16,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: width * 0.09, top: height * 0.1),
                      child: Image.asset("assets/6461.jpg"),
                    ),
                    SizedBox(
                      height: height * 0.12,
                    ),
                    Container(
                      height: height * 0.03,
                      width: width * 0.5,
                      padding: EdgeInsets.only(left: width * 0.02),
                      margin:
                          EdgeInsets.only(left: width * 0.2, top: height * 0.04),
                      child: const Center(
                        child: AutoSizeText(
                          "Don't have an account ?",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 18,
                          maxLines: 1,
                          minFontSize: 8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      //padding: EdgeInsets.symmetric(horizontal:width*0.1),
                      // color: Colors.black,
                      height: height * 0.095,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
//                            Get.snackbar("Hello there","Thanks for choice us !", snackPosition: SnackPosition.TOP,forwardAnimationCurve:Curves.easeOut,reverseAnimationCurve:Curves.easeIn);
                            },
                            child: Container(
                              height: height * 0.08,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 5.0),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: AutoSizeText(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Color(0xFFF67D20),
                                    fontFamily: kFontFamily,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                              // Get.snackbar("Hi ","Login to join our classroom ", snackPosition: SnackPosition.TOP,forwardAnimationCurve:Curves.easeOut,reverseAnimationCurve:Curves.easeIn);
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: width * 0.021),
                              height: height * 0.08,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF67D20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 5.0),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: AutoSizeText(
                                  "Log in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: kFontFamily,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 16,
                                  minFontSize: 12,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );

    return pageView;
  }
}
