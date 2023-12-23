import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_management_hive_api/config/constants/hive_table_constant.dart';
import 'package:student_management_hive_api/features/batch/data/model/batch_hive_model.dart';
import 'package:student_management_hive_api/features/course/data/model/course_hive_model.dart';

//create object like this(immutable)
final hiveServiceProvider=Provider<HiveService>((ref) => HiveService());

class HiveService {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    //Register adapter
  Hive.registerAdapter(BatchHiveModelAdapter());
  Hive.registerAdapter(CourseHiveModelAdapter());
  }

  //--batch queries
  Future<void> addBatch(BatchHiveModel batch)async{
    var box=await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
    await box.put(batch.batchId, batch);
  }
  Future<List<BatchHiveModel>> getAllBatches()async{
    var box= await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
    var batches=box.values.toList();
    return batches; 
    
  }
   //--course queries
  Future<void> addCourse(CourseHiveModel course)async{
    var box=await Hive.openBox<CourseHiveModel>(HiveTableConstant.courseBox);
    await box.put(course.courseId, course);
  }
  Future<List<CourseHiveModel>> getAllCourses()async{
    var box= await Hive.openBox<CourseHiveModel>(HiveTableConstant.courseBox);
    var courses=box.values.toList();
    return courses; 
    
  }


  
}
