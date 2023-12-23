import 'package:flutter/material.dart';
import 'package:student_management_hive_api/features/batch/presentation/view/add_batch_view.dart';
import 'package:student_management_hive_api/features/course/presentation/view/add_course_view.dart';
import 'package:student_management_hive_api/features/home/presentation/view/bottom_view/dashboard_view.dart';
import 'package:student_management_hive_api/features/home/presentation/view/bottom_view/profile_view.dart';
 
class HomeState{
  final int index;
  final List<Widget> lstWidget;
 
  HomeState({
    required this.index,
    required this.lstWidget
  });
 
  HomeState.initialState()
  :index=0,
  lstWidget=[
    const DashboardView(),
    const AddCourseView(),
    AddBatchView(),
    const ProfileView(),
  ];
 
  // copy with function to change the index
  HomeState copyWith({
    int? index,
  }){
    return HomeState(index: index?? this.index,
    lstWidget: lstWidget,
    );
  }
}