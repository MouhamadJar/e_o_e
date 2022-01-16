import 'instructor_model.dart';

class Course{
  late String course_id,course_name ,course_level ,course_description,currency,badges,course_subtitle,course_image,course_language;
  late Instructor course_instructor;
  late int course_price,course_rate,course_videos_count,course_duration,course_students;
  late bool is_free;
  Course.fromJson ({
    required Map<String , dynamic> json,
}){
    course_id = json['course_id'];
    course_name = json['course_name'];
    course_level = json['course_level'];
    course_description = json['course_description'];
    currency = json['currency'];
    badges = json['badges'];
    course_subtitle = json['course_subtitle'];
    course_image = json['course_image'];
    course_language = json['course_language'];
    course_price = json['course_price'];
    course_rate = json['course_rate'];
    course_videos_count = json['course_videos_count'];
    course_duration = json['course_duration'];
    course_students = json['course_students'];
    is_free = json['is_free'];
    course_instructor = Instructor.fromJson(json : json);
  }
}