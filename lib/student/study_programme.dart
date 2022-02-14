import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_o_e/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudyProgramme extends StatelessWidget {
  const StudyProgramme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                      'assets/studyProg.svg',
                      width: width,
                    )),
                const AutoSizeText(
                  kLorem + kLorem + kLorem + kLorem,
                  maxLines: 8,
                  maxFontSize: 16,
                  minFontSize: 8,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(width * .02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width,
                    height: height * 0.04,
                    child: const AutoSizeText(
                      'Some information we need to design your study program',
                      maxLines: 1,
                      maxFontSize: 16,
                      minFontSize: 8,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * .3,
                        height: height * .03,
                        child: const AutoSizeText(
                          '1- Subject name :',
                          style: TextStyle(
                            color: Color(0xFFC65700),
                            fontWeight: FontWeight.bold,
                          ),
                          maxFontSize: 12,
                          minFontSize: 8,
                          maxLines: 1,
                        ),
                      ),
                      Container(
                        width: width * .5,
                        height: height * .05,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.05, top: height * .02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.05,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * .3,
                                height: height * .03,
                                child: const AutoSizeText(
                                  'Number of lessons:',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 8,
                                  maxLines: 1,
                                ),
                              ),
                              Container(
                                width: width * .5,
                                height: height * .05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9.0),
                                  border: Border.all(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * .04,
                          width: width,
                          child: const AutoSizeText(
                            'Content :',
                            maxLines: 1,
                            maxFontSize: 16,
                            minFontSize: 8,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.05,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * .35,
                                height: height * .04,
                                child: const AutoSizeText(
                                  'Unexamined lessons:',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 8,
                                  maxLines: 1,
                                ),
                              ),
                              Container(
                                width: width * .5,
                                height: height * .05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9.0),
                                  border: Border.all(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
