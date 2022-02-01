import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/constants.dart';
import 'package:e_o_e/network/online/end_points.dart';
import 'package:e_o_e/network/online/http.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  SearchResult({Key? key, required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    Future<dynamic> searchResult = search(data: data);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Center(
          child: Text(
            "Search result",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: FutureBuilder(
        future: searchResult,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.hasData) {
            List<dynamic> data = snapshot.data;
            if (data.isEmpty) {
              return const Center(child: Text('No results'));
            } else {
              return SingleChildScrollView(
                child: SizedBox(
                  width: width,
                  height: height,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return MyCourse(
                          height: height,
                          width: width,
                          videoImage: BASEURL + data[index]['course_image'],
                          courseInstructor: data[index]['course_instructor']
                              ['user']['username'],
                          courseInstructorEducation: data[index]
                              ['course_instructor']['job_role'],
                          courseBadges: data[index]['badges'],
                          coursePrice: data[index]['course_price'].toString(),
                          courseRating: data[index]['course_rate'].toString(),
                        id: data[index]['course_id'],);

                    },
                  ),
                ),
              );
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
