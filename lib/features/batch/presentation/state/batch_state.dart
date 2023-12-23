

import 'package:student_management_hive_api/features/batch/domain/entity/batch_entity.dart';

class BatchState {
  final List<BatchEntity> batches;
  final bool isLoading;
  final bool showMessage;

  BatchState({
    required this.batches,
    required this.showMessage,
    required this.isLoading,
  });

  // initial constructor
  factory BatchState.initial(){
    return BatchState(batches: [], isLoading: false,showMessage: false);
  }

 BatchState copyWith({
    List<BatchEntity>? batches,
    bool? showMessage,

    bool? isLoading
  }) {
    return BatchState(
      batches: batches ??this.batches, 
      isLoading: isLoading ?? this.isLoading,
      showMessage: showMessage?? this.showMessage
    );
  }
}