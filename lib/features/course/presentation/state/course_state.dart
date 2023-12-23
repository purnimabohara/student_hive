import 'package:student_management_hive_api/features/course/domain/entity/course_entity.dart';

class CourseState{
  final bool isloading;
  final List<CourseEntity>courses;
  final bool showMessage;

  CourseState({
    required this.courses,
    required this.isloading,
    required this.showMessage
  });

  CourseState copyWith({
    List<CourseEntity>?courses,
    bool? isloading,
    bool?showMessage
  }){
      return CourseState(
      courses: courses ??this.courses, 
      isloading: isloading ?? this.isloading,
      showMessage: showMessage?? this.showMessage
    );
  }
}