import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../home_screen.dart';
import 'login_screen.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    Get.snackbar("Hello there", "Thanks for choice us !",
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.easeOut,
        reverseAnimationCurve: Curves.easeIn);
    super.initState();
  }

  var myKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneController = TextEditingController();
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
                  image: AssetImage("assets/sign up 2.png"),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Form(
                  key: myKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.3),
                        child: const AutoSizeText(
                          "Sign up and let's get started",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 100),
                          maxFontSize: 16,
                          minFontSize: 14,
                        ),
                      ),
                      Container(
                        height: height * 0.091,
                        width: width * 0.8,
                        margin: EdgeInsets.only(left: width * 0.04),
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: TextFormField(
                          controller: nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name must not be empty';
                            }
                          },
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: kInputDecoration.copyWith(
                            icon: SvgPicture.asset(
                              "assets/name (2).svg",
                              height: height * 0.04,
                            ),
                            labelText: "Enter your name",
                            labelStyle: const TextStyle(
                              fontFamily: kFontFamily,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.012),
                      Container(
                        height: height * 0.091,
                        width: width * 0.8,
                        margin: EdgeInsets.only(left: width * 0.04),
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'phone number must not be empty';
                            }
                          },
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: kInputDecoration.copyWith(
                            icon: SvgPicture.asset(
                              "assets/phone-call (2).svg",
                              height: height * 0.04,
                            ),
                            labelText: "Enter your phone number",
                            labelStyle: const TextStyle(
                              fontFamily: kFontFamily,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.012),
                      Container(
                        height: height * 0.091,
                        width: width * 0.8,
                        margin: EdgeInsets.only(left: width * 0.04),
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: TextFormField(
                          controller: userNameController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email must not be empty';
                            }
                          },
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: kInputDecoration.copyWith(
                            icon: SvgPicture.asset(
                              "assets/email (1).svg",
                              height: height * 0.04,
                            ),
                            labelStyle: const TextStyle(
                              fontFamily: kFontFamily,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.012),
                      Container(
                        height: height * 0.091,
                        width: width * 0.8,
                        margin: EdgeInsets.only(left: width * 0.04),
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password must not be empty';
                            }
                          },
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          obscureText: secure,
                          decoration: kInputDecoration.copyWith(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() => secure = !secure);
                                },
                                icon: Icon(CupertinoIcons.eye)),
                            icon: SvgPicture.asset(
                              "assets/padlock (2).svg",
                              height: height * 0.04,
                              color: Colors.black,
                            ),
                            labelText: "Enter your password",
                            labelStyle: const TextStyle(
                              fontFamily: kFontFamily,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.025),
                      Column(
                        children: [
                          Container(
                            //    color: Colors.grey,
                            height: height * 0.03,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  //color: Colors.blue,
                                  height: height * 0.03,
                                  width: width * 0.51,
                                  child: const AutoSizeText(
                                    "By signing up you agree to our ",
                                    style: TextStyle(
                                        fontSize: 101, fontFamily: kFontFamily),
                                    maxFontSize: 16,
                                    maxLines: 1,
                                    minFontSize: 14,
                                  ),
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
                                  child: Container(
                                    // color: Colors.black,
                                    height: height * 0.03,
                                    width: width * 0.33,
                                    child: const AutoSizeText(
                                      "Terms & privacy ",
                                      style: TextStyle(
                                        fontSize: 101,
                                        fontFamily: kFontFamily,
                                        color: Colors.blue,
                                      ),
                                      maxFontSize: 16,
                                      minFontSize: 14,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
                              const AutoSizeText(
                                "Already have an Account ?!",
                                style: TextStyle(
                                    fontSize: 101, fontFamily: kFontFamily),
                                maxFontSize: 16,
                                minFontSize: 14,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: const AutoSizeText(
                                  "   Log in!",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 101,
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 16,
                                  minFontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.2865, top: height * 0.07),
                        child: InkWell(
                          onTap: () {
                            if (myKey.currentState!.validate()) {
                              Navigator.pushReplacement(
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
