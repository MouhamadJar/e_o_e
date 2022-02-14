import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'credits.dart';
import 'history.dart';

class MainSetting extends StatelessWidget {
  const MainSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/settings main.png",),
                fit: BoxFit.fill,
                filterQuality:FilterQuality.high,
                isAntiAlias: true,
        )),
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.all(width*0.04),
              child: GestureDetector(
                  child: SvgPicture.asset("assets/back (1).svg",cacheColorFilter: true,),onTap: (){Navigator.pop(context);},),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.08, left: width * 0.3),
              child: GestureDetector(
                child: Image.asset("assets/Group 1325.png",filterQuality: FilterQuality.high,isAntiAlias: true,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentScreen(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.33, left: width * 0.3),
              child: GestureDetector(
                child: Image.asset("assets/Group 1327.png",filterQuality:FilterQuality.high,isAntiAlias: true,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HistoryScreen(),
                    ),
                  );
                },
              ),
            ),
            // Padding(d
            //   padding: EdgeInsets.only(top: height * 0.09, left: width * 0.6),
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //     child: Container(
            //       decoration: BoxDecoration(
            //           color:Color(0xFFFEC668),
            //         borderRadius: BorderRadius.circular(20.0),
            //         boxShadow: [
            //           BoxShadow(
            //             color:Color(0xFFFEC668),
            //             blurRadius: 3
            //           ),
            //         ]
            //       ),
            //       child: const AutoSizeText("change setting",style: TextStyle(fontFamily: kFontFamily,color:Color(0xFF085CB1),),),
            //       height: height * 0.06,
            //       width: width * 0.25,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
