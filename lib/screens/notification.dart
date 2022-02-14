import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../component/components.dart';
import '../constants.dart';

class NotificationScreen extends StatefulWidget {
   NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    final width = MediaQuery.of(context)?.size.width ?? double.nan;


    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: getNotifications(),
            builder: (context,snapshot) {
              print(snapshot.data.toString());
              if(snapshot.hasError){
                return const Center(child: Text('conection error'));
              }
              if(snapshot.hasData) {
                dynamic data = snapshot.data;
                dynamic notifies = data['messages'];
                return Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(width*0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Notification",
                          style: TextStyle(
                            color: Color(0xFF085CB1),
                            fontSize: 20,
                            fontFamily: kFontFamily,
                          ),
                        ),
                        InkWell(
                          child: SvgPicture.asset(""),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin : EdgeInsets.only(left: width*0.011),
                    height: height,
                    width: width,
//                    color: Colors.grey,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: notifies.length,
                        itemBuilder: (context , index) =>   MyNotification(height: height, width: width, message: notifies[index]['message'],),
                        padding:  EdgeInsets.all(height * 0.01,),
                      ),
                    ),
                  ),
                ],
              );
              }
              return mySecondLoader();
            }
          ),
        ),
      ),
    );
  }
}

