



import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/project/project_model.dart';
part 'project_state.freezed.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState(List<ProjectModel> projects) = ProjectStateData;
  const factory ProjectState.loading() = ProjectStateLoading;
  const factory ProjectState.error(dynamic error) = ProjectStateError;
}