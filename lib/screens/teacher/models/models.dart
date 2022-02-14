import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class ReviewerInfo {
  late String reviewerImg, reviewerName, reviewerComment;

  ReviewerInfo(
      {required this.reviewerImg,
      required this.reviewerName,
      required this.reviewerComment});
}

class Check extends StatefulWidget {
  const Check({
    Key? key,
  }) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color(0xFFFF8324),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class ReviewCard extends StatefulWidget {

   ReviewCard({
    Key? key,
    required this.width,
    required this.reviewerImg,
    required this.reviewerName,
    required this.reviewerComment,
    required this.height,
    required this.onLike,
    required this.onDisLike,
  }) : super(key: key);

  final double width;
  final double height;
  final Function onLike,onDisLike;
  final String reviewerImg, reviewerName, reviewerComment;

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  bool isLiked = false;
  bool isDisLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widget.width * 0.03),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(9),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 13,
            ),
          ]),
      height: widget.height * 0.3,
      width: double.infinity,
      child: LayoutBuilder(builder: (context, size) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(size.maxWidth * .03),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.reviewerImg),
                    maxRadius: size.maxWidth * .13,
                    minRadius: size.maxWidth * .075,
                  ),
                ),
                FittedBox(
                  child: AutoSizeText(
                    widget.reviewerName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 2020,
                        fontFamily: kFontFamily),
                    maxFontSize: 20,
                    minFontSize: 10,
                  ),
                ),
              ],
            ),
            FittedBox(
              child: Container(
                padding: EdgeInsets.all(size.maxWidth * .03),
                //color: Colors.grey,
                width: size.maxWidth,
                height: size.maxHeight * .23,
                child: AutoSizeText(
                  widget.reviewerComment,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 2020,
                      fontFamily: kFontFamily),
                  maxFontSize: 20,
                  minFontSize: 10,
                  maxLines: 10,
                ),
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(size.maxWidth * .03),
                    margin: EdgeInsets.all(size.maxWidth * .03),
                    //color: Colors.grey,
                    width: size.maxWidth * .65,
                    height: size.maxHeight * .17,
                    child: const Center(
                      child: AutoSizeText(
                        "was this review is helpful ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 2020,
                            fontFamily: kFontFamily),
                        maxFontSize: 20,
                        minFontSize: 10,
                        maxLines: 10,
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        widget.onLike;
                        setState(() {
                          isLiked = !isLiked;
                          if(isDisLiked){
                            isDisLiked = false;
                          }
                        });
                      },
                      child: SvgPicture.asset(
                        isLiked ? likedImage : likeImage,
                        height: size.maxHeight * .07,
                      )),
                  SizedBox(
                    width: size.maxWidth * .03,
                  ),
                  GestureDetector(
                      onTap: (){
                        widget.onDisLike;
                        setState(() {
                          if(isLiked){
                            isLiked = false;
                          }
                          isDisLiked = !isDisLiked;
                        });
                        },
                      child: SvgPicture.asset(
                        isDisLiked ? disLikedImage : disLikeImage,
                        height: size.maxHeight * .07,
                      )),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class Tests extends StatelessWidget {
  const Tests({
    Key? key,
    required this.width,
    required this.studentImage,
    required this.studentName,
    required this.time,
    required this.courseName,
    required this.part,
    required this.section,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final String studentImage, studentName, time, courseName, part;
  final int section;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.011),
      margin: EdgeInsets.only(
        top: height * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
          )
        ],
        color: Colors.white,
      ),
      height: height * 0.12,
      width: width * 0.94,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: width * .03),
            height: height * 0.1,
            width: width * .27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(studentImage),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: height * .04,
                    width: width * .15,
                    child: Center(
                      child: AutoSizeText(
                        studentName,
                        style: const TextStyle(
                          fontSize: 2021,
                          fontFamily: kFontFamily,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: width * .3),
                  Container(
                    height: height * .04,
                    width: width * .15,
                    child: Center(
                      child: AutoSizeText(
                        time,
                        style: const TextStyle(
                          fontSize: 2021,
                          fontFamily: kFontFamily,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: height * .04,
                    width: width * .23,
                    child: Center(
                      child: AutoSizeText(
                        courseName,
                        style: const TextStyle(
                          fontSize: 2021,
                          fontFamily: kFontFamily,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: width * .03),
                  Container(
                    height: height * .04,
                    width: width * .13,
                    child: Center(
                      child: AutoSizeText(
                        "Section" + section.toString(),
                        style: const TextStyle(
                          fontSize: 2021,
                          fontFamily: kFontFamily,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: width * .05),
                  Container(
                    height: height * .04,
                    width: width * .17,
                    //color: Colors.orangeAccent,
                    child: Center(
                      child: AutoSizeText(
                        part,
                        style: const TextStyle(
                          fontSize: 2021,
                          fontFamily: kFontFamily,
                        ),
                        minFontSize: 12,
                        maxFontSize: 16,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
