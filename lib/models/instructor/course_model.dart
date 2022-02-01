import 'package:e_o_e/network/online/end_points.dart';

import 'instructor_model.dart';

class Course {
  late dynamic courseId,
      courseName,
      courseDescription,
      currency,
      badges,
      courseSubtitle,
      courseImage,
      courseLanguage;
  late CourseInstructor courseInstructor;
  late dynamic coursePrice,
      courseRate,
      courseVideosCount,
      courseDuration,
      courseTest,
      courseTestPrice,
      courseStudents;
  late bool isFree;
  late ParentCategory courseParentCategory;
  late MiniCategory courseMiniCategory;
  late List<Section> courseSections;

  Course.fromJson({
    required Map<String, dynamic> json,
  }) {
    courseId = json['course_id'];
    courseName = json['course_name'];
    courseDescription = json['course_description'];
    currency = json['currency'];
    badges = json['badges'];
    courseSubtitle = json['course_subtitle'];
    courseImage = BASEURL + json['course_image'];
    courseLanguage = json['course_language'];
    coursePrice = json['course_price'];
    courseRate = json['course_rate'];
    courseVideosCount = json['course_videos_count'];
    courseDuration = json['course_duration'];
    courseStudents = json['course_students'];
    isFree = json['is_free'];
    courseTest = json['course_test'];
    courseTestPrice = json['course_tests_price'];
    courseInstructor =
        CourseInstructor.fromJson(json: json['course_instructor']);
    courseParentCategory =
        ParentCategory.fromJson(json: json['course_parent_category'][0]);
    courseMiniCategory =
        MiniCategory.fromJson(json: json['course_category'][0]);
    json['course_sections'].forEach(
        (section) => courseSections.add(Section.fromJson(json: section)));
  }
}

class ParentCategory {
  late dynamic parentCategoryId,
      parentCategoryName,
      parentCategoryImage,
      parentCategoryDescription;
  late int studentsCount;

  ParentCategory.fromJson({required Map<String, dynamic> json}) {
    parentCategoryId = json['parent_category_id'];
    parentCategoryName = json['parent_category_name'];
    parentCategoryImage = json['parent_category_image'];
    parentCategoryDescription = json['parent_category_description'];
    studentsCount = json['students_count'];
  }
}

class MiniCategory {
  late dynamic categoryId,
      categoryName,
      categoryImage,
      parentCategory,
      categoryDescription;
  late int studentsCount;

  MiniCategory.fromJson({required Map<String, dynamic> json}) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
    categoryDescription = json['category_description'];
    studentsCount = json['students_count'];
    parentCategory = json['parent_category'];
  }
}

class Section {
  late dynamic sectionID, sectionName, sectionArticle;
  late List<SectionVideo> sectionVideos;

  Section.fromJson({
    required Map<String, dynamic> json,
  }) {
    sectionID = json['section_id'];
    sectionName = json['section_name'];
    sectionArticle = json['section_article'];
    json['section_videos'].forEach((section) {
      sectionVideos.add(SectionVideo.formJson(json: section));
    });
  }
}

class SectionVideo {
  late dynamic videoID, videoTitle, videoDuration;

  SectionVideo.formJson({
    required Map<String, dynamic> json,
  }) {
    videoID = json['video_id'];
    videoTitle = json['video_title'];
    videoDuration = json['video_duration'];
  }
}

class CourseInstructor {
  late dynamic username, firstName, lastName, profileImage;
  late dynamic id;
  CourseInstructor.fromJson({required Map<String, dynamic> json}) {
    username = json['user']['username'];
    firstName = json['user']['first_name'];
    lastName = json['user']['last_name'];
    id = json['id'];
    profileImage = BASEURL + json['profile_image'];
  }
}
