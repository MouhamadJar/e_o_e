import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/sign/light_theme/rest_password.dart';
import 'package:e_o_e/screens/sign/light_theme/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    Get.snackbar("Hi ", "Login to join our classroom ",
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeIn);
    super.initState();
  }

  var formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/login 3.png"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.3),
                      child: const AutoSizeText(
                        "Log in to your Account",
                        style:
                            TextStyle(fontFamily: kFontFamily, fontSize: 100),
                        maxFontSize: 20,
                        minFontSize: 16,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      height: height * 0.091,
                      width: width * 0.8,
                      margin: EdgeInsets.only(left: width * 0.04),
                      padding: EdgeInsets.only(top: height * 0.03),
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'your name must not be empty';
                            }
                          },
                          controller: userNameController,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: kInputDecoration.copyWith(
                            labelText: 'Enter your username',
                            icon: Icon(
                              Icons.supervised_user_circle_outlined,
                              size: height * 0.035,
                            ),
                            labelStyle:
                                const TextStyle(fontFamily: kFontFamily),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      height: height * 0.091,
                      width: width * 0.8,
                      margin: EdgeInsets.only(left: width * 0.04),
                      padding: EdgeInsets.only(top: height * 0.03),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: kInputDecoration.copyWith(

                          icon: SvgPicture.asset(
                            "assets/padlock (2).svg",
                            height: height * 0.04,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() => secure = !secure);
                              },
                              icon: Icon(CupertinoIcons.eye)),
                          labelText: "Enter your password",
                          labelStyle: const TextStyle(fontFamily: kFontFamily),
                        ),
                        obscureText: secure,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password must not be empty';
                          }
                        },
                        controller: passwordController,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: width * 0.07),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const AutoSizeText(
                                "Or ",
                                style: TextStyle(
                                    fontSize: 100, fontFamily: kFontFamily),
                                maxFontSize: 16,
                                minFontSize: 14,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RestPasswordScreen(),
                                    ),
                                  );
                                },
                                child: const AutoSizeText(
                                  "Forgot Password ",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 105,
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 16,
                                  minFontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              const AutoSizeText(
                                "Don't have an account ? ",
                                style: TextStyle(
                                    fontSize: 105, fontFamily: kFontFamily),
                                maxFontSize: 16,
                                minFontSize: 14,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen(),
                                    ),
                                  );
                                },
                                child: const AutoSizeText(
                                  "Sign up!",
                                  maxFontSize: 16,
                                  minFontSize: 14,
                                  style: TextStyle(
                                    fontSize: 105,
                                    fontFamily: kFontFamily,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.2865, top: height * 0.07),
                      child: InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          }
                        },
                        child: SvgPicture.asset(
                          "assets/Group 1350.svg",
                          width: width * 0.05,
                          height: height * 0.08,
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
      ),
    );
  }
}
