import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'login_screen.dart';
import 'new_password.dart';

class RestPasswordScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
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
                image: AssetImage("assets/reset password 2.png"),
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
                      padding: EdgeInsets.only(top: height * 0.4),
                      child: const AutoSizeText(
                        "Reset your password",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                        ),
                        maxFontSize: 12,
                        minFontSize: 8,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      height: height * 0.091,
                      width: width * 0.8,
                      margin: EdgeInsets.only(left: width * 0.07),
                      padding: EdgeInsets.only(top: height * 0.03),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'email must not be empty';
                          }
                        },
                        controller: emailController,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        decoration: kInputDecoration.copyWith(
                          icon: SvgPicture.asset(
                            "assets/email (1).svg",
                            height: height * 0.04,
                          ),
                          labelStyle: const TextStyle(fontFamily: kFontFamily),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.24, top: height * 0.03),
                      child: InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            DioHelper.postData(
                              url: RESTPASSWORD,
                              data: {
                                "email": emailController.text,
                              },
                            ).then(
                              (value) {
                                print(value.data);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NewPasswordScreen(),
                                  ),
                                );
                              },
                            ).catchError((onError){
                              print(onError.toString());
                            });
                          }
                        },
                        child: SvgPicture.asset(
                          "assets/Group 1117.svg",
                          width: width * 0.05,
                          height: height * 0.08,
                          placeholderBuilder: (_) =>
                              const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: width * 0.4, top: height * 0.01),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Or ",
                                style: TextStyle(
                                    fontSize: 12.5, fontFamily: kFontFamily),
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
                                child: const Text(
                                  "Log in",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontFamily: kFontFamily,
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
