import 'package:flutter/material.dart';

class SecondBoarderScreen extends StatelessWidget {
  SecondBoarderScreen({
    required this.innerText,
    required this.titleText,
    required this.backgroundImage,
    required this.onPress,
    Key? key,
    required this.size,
  }) : super(key: key);
  Size size;
  final String backgroundImage, titleText, innerText;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
      ),
    );
  }
}
