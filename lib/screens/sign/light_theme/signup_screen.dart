import 'package:auto_size_text/auto_size_text.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../home_screen.dart';
import 'login_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
  var usernameController = TextEditingController();
  var first_nameController = TextEditingController();
  var last_nameController = TextEditingController();
  var emailController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  bool secure = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
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
                      child: Container(
                        width: width * .8,
                        height: height * .04,
                        child: const AutoSizeText(
                          "Sign up and let's get started",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                          ),
                          maxFontSize: 24,
                          minFontSize: 6,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.091,
                      width: width * 0.8,
                      margin: EdgeInsets.only(left: width * 0.04),
                      padding: EdgeInsets.only(top: height * 0.03),
                      child: TextFormField(
                        controller: first_nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'firstname must not be empty';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/name (2).svg",
                            height: height * 0.04,
                          ),
                          labelText: "Enter your firstname",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                        controller: last_nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'firstname must not be empty';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/name (2).svg",
                            height: height * 0.04,
                          ),
                          labelText: "Enter your firstname",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                        controller: usernameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'secondname must not be empty';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/name (2).svg",
                            height: height * 0.04,
                          ),
                          labelText: "Enter your secondname",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                        controller: numberController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'phone number must not be empty';
                          }
                        },
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/phone-call (2).svg",
                            height: height * 0.04,
                          ),
                          labelText: "Enter your phone number",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email must not be empty';
                          }
                        },
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/email (1).svg",
                            height: height * 0.04,
                          ),
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                          fontSize: 8,
                        ),
                        obscureText: secure,
                        decoration: kInputDecoration.copyWith(
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
                          icon: SvgPicture.asset(
                            "assets/padlock (2).svg",
                            height: height * 0.04,
                            color: Colors.black,
                          ),
                          labelText: "Enter your password",
                          labelStyle: const TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 8,
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
                                width: width * 0.45,
                                child: const AutoSizeText(
                                  "By signing up you agree to our ",
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 24,
                                  maxLines: 1,
                                  minFontSize: 8,
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
                                      fontFamily: kFontFamily,
                                      color: Colors.blue,
                                    ),
                                    maxFontSize: 24,
                                    minFontSize: 8,
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
                            Container(
                              height: height * 0.03,
                              width: width * 0.4,
                              child: const AutoSizeText(
                                "Already have Account ?!",
                                style: TextStyle(fontFamily: kFontFamily),
                                maxFontSize: 24,
                                minFontSize: 6,
                                overflow: TextOverflow.fade,
                              ),
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
                              child: Container(
                                height: height * 0.03,
                                width: width * 0.33,
                                child: const AutoSizeText(
                                  " Log in!",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: kFontFamily,
                                  ),
                                  maxFontSize: 24,
                                  minFontSize: 8,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
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
                          return ConditionalBuilder(
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
                                  if (myKey.currentState!.validate()) {
                                    http.Response _response = await signup(
                                            first_name:
                                                first_nameController.text,
                                            last_name: last_nameController.text,
                                            username: usernameController.text,
                                            email: emailController.text,
                                            number: numberController.text,
                                            password: passwordController.text)
                                        .then((value) {
                                      print(value.toString);
                                      return value;
                                    }).catchError(
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
                                      messageToast(
                                          msg: "Pleas Pass Valid Credentials",
                                          color: Colors.red);
                                    }
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
