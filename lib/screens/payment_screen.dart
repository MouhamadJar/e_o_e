import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/screens/sign/light_theme/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
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
              GestureDetector(
                onTap: (){
                  DioHelper.deleteAccount().then((value) {
                    GetStorage().write(
                      'token',
                      'noToken',
                    );
                    navigateAndFinish(context, LoginScreen());
                  });
                },
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.7,top: height*0.04),
                  child: const Text("Close Account",style: TextStyle(
                      color: Colors.red,
                      fontFamily: kFontFamily,
                      fontSize: 15
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
