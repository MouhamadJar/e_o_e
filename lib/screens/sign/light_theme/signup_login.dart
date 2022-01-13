import 'package:e_o_e/screens/sign/light_theme/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_screen.dart';

class SignupLoginScreen extends StatelessWidget {
  const SignupLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width??double.nan;
    final height = MediaQuery.of(context)?.size.height??double.nan;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/on boarding 3.png"),
                fit: BoxFit.fill),
          ),
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              Container(
                padding: const EdgeInsets.only(left: 163.7),
                child: Column(
                  children:  [
                    const  Text(
                      "titleText",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Container(height: height*0.03),
                    const   Text(
                      """
       kjaghfadjkljka
       fdnkjjkdgaba
       dfkfkjvjkfjkbdfb
                """,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.47),
              Container(
                padding:  EdgeInsets.only(top: height*0.045 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFF67D20).withOpacity(0.5),
                              offset: const Offset(0, 20),
                              blurRadius: 98,
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          "assets/Group 984.svg",
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFFF67D20).withOpacity(0.5),
                                  offset: const Offset(0, 20),
                                  blurRadius: 98,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              "assets/Group 983.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //height: size.height * 0.1,
                width: width * 0.55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
