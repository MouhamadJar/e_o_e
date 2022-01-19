import 'package:auto_size_text/auto_size_text.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:e_o_e/screens/sign/light_theme/rest_password.dart';
import 'package:e_o_e/screens/sign/light_theme/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
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

  bool isLoading = false;
  bool isLoged = false;
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
                        style: TextStyle(
                          fontFamily: kFontFamily,
                        ),
                        maxFontSize: 24,
                        minFontSize: 6,
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
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'your name must not be empty';
                            }
                          },
                          controller: userNameController,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          decoration: kInputDecoration.copyWith(
                            labelText: 'Enter your username',
                            icon: Icon(
                              Icons.supervised_user_circle_outlined,
                              size: height * 0.035,
                            ),
                            labelStyle: const TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 10,
                            ),
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
                          fontSize: 10,
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
                            icon: Icon(
                              !secure
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_slash,
                              color: secure ? Colors.black45 : kPrimaryColor,
                            ),
                          ),
                          labelText: "Enter your password",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 10,
                          ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const AutoSizeText(
                                "Or ",
                                style: TextStyle(fontFamily: kFontFamily),
                                maxFontSize: 24,
                                minFontSize: 6,
                                overflow: TextOverflow.fade,
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
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 24,
                                  minFontSize: 6,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const AutoSizeText(
                                "Don't have account ? ",
                                style: TextStyle(fontFamily: kFontFamily),
                                maxFontSize: 24,
                                minFontSize: 6,
                                maxLines: 2,
                                overflow: TextOverflow.fade,
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
                                  maxFontSize: 24,
                                  minFontSize: 6,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
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
                      child: ConditionalBuilder(
                        condition: !isLoading,
                        fallback: (BuildContext context) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        },
                        builder: (BuildContext context) {
                          return InkWell(
                            onTap: () async {
                              setState(
                                () {
                                  isLoading = true;
                                },
                              );
                              if (formKey.currentState!.validate()) {
                                http.Response _response = await login(
                                  username: userNameController.text,
                                  password: passwordController.text,
                                ).then(
                                  (value) {
                                    print(value.toString);
                                    return value;
                                  },
                                ).catchError(
                                  (onError) {
                                    setState(
                                      () {
                                        isLoading = false;
                                        print(onError.toString());
                                        messageToast(
                                          msg: "Connection failed",
                                          color: Colors.redAccent,
                                        );
                                      },
                                    );
                                  },
                                );
                                if (_response.statusCode == 200) {
                                  messageToast(
                                      msg: "Login success",
                                      color: Colors.green);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                                } else {
                                  setState(
                                    () {
                                      isLoading = false;
                                      messageToast(
                                          msg: "Pleas Pass Valid Credentials",
                                          color: Colors.red);
                                    },
                                  );
                                }
                              } else {
                                setState(() {
                                  isLoading = false;
                                  messageToast(
                                      msg: "Pleas Pass Valid Credentials",
                                      color: Colors.red);
                                });
                              }
                            },
                            child: SvgPicture.asset(
                              "assets/Group 1350.svg",
                              width: width * 0.05,
                              height: height * 0.08,
                              placeholderBuilder: (_) =>
                                  const CircularProgressIndicator(),
                            ),
                          );
                        },
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
