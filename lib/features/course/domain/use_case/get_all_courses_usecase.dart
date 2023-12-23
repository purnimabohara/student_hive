import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/core/failure/failure.dart';
import 'package:student_management_hive_api/features/auth/domain/entity/auth_entity.dart';
import 'package:student_management_hive_api/features/batch/domain/entity/batch_entity.dart';
import 'package:student_management_hive_api/features/batch/domain/repository/batch_repository.dart';
import 'package:student_management_hive_api/features/course/domain/entity/course_entity.dart';
import 'package:student_management_hive_api/features/course/domain/repository/course_repository.dart';

final getAllCoursesUsecaseProvider= Provider.autoDispose<GetAllCoursesUsecase>((ref) => GetAllCoursesUsecase(repository: ref.read(courseRepositoryProvider)));
class GetAllCoursesUsecase{
  final ICourseRepository repository;

  GetAllCoursesUsecase({
    required this.repository
  });
 Future<Either<Failure, List<CourseEntity>>> getAllCourses()async{
  return await repository.getAllCourses();
 }

  
}