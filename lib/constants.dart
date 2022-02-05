import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingScreen extends StatelessWidget {
  BoardingScreen({
    required this.innerText,
    required this.titleText,
    required this.backgroundImage,
    required this.onPress,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final String backgroundImage, titleText, innerText;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: size.width * 0.05),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage), fit: BoxFit.cover),
          ),
          height: MediaQuery
              .of(context)
              ?.size
              .height ?? double.nan,
          width: MediaQuery
              .of(context)
              ?.size
              .width ?? double.nan,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.75, top: size.height * 0.02),
                child: InkWell(
                  onTap: onPress,
                  child: Container(
                    decoration: const BoxDecoration(
                      //color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: 82,
                    height: 25.2,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.09),
              //the space between button and the text
              Column(
                children: [
                  Text(
                    titleText,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    innerText,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const kInputDecoration = InputDecoration(
  icon: Icon(Icons.mail_outline, color: Colors.blueGrey),
  labelText: "Enter your email",
  labelStyle: TextStyle(
    color: Colors.grey,
    fontSize: 8,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
  focusColor: Color(0xFF085CB1),
  hoverColor: Color(0xFF085CB1),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  filled: true,
  fillColor: Colors.white,
);

const String kFontFamily = 'Cambo-Regular';

Color kPrimaryColor = Color(0xFF085CB1);

ThemeData theme = ThemeData();

void printFullText(String text){
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

//
// final height = MediaQuery.of(context)?.size.height ?? double.nan;
// final width = MediaQuery.of(context)?.size.width ?? double.nan;

class MyColumn extends StatelessWidget {
  const MyColumn({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: width * 0.02,
      ),
      height: height * 0.045,
      width: width * 0.39,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: kFontFamily, color: Colors.white, fontSize: 17),
        ),
      ),
      decoration: const BoxDecoration(
          color: Color(0xFFC345DD),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0xFFC345DD),
            ),
          ]),
    );
  }
}

class checkedBox extends StatelessWidget {
  const checkedBox({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.025,
      width: width * 0.044,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFFF67D20),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: Color(0xFFF67D20),
            ),
          ]),
      child: const Center(
          child: Icon(
            Icons.check,
            color: Color(0xFFF67D20),
            size: 18,
          )),
    );
  }
}

class unCheckedBox extends StatelessWidget {
  const unCheckedBox({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.025,
      width: width * 0.044,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: Colors.black,
            ),
          ]),
    );
  }
}

const String kLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod";

String token = '';
String likeImage = 'assets/like (1).svg';
String likedImage = 'assets/liked.svg';
String disLikedImage = 'assets/disliked.svg';
String disLikeImage = 'assets/dislike.svg';