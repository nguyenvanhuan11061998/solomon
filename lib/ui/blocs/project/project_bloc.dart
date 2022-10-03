import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:flutter_application/ui/blocs/project/project_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectBloc extends Cubit<ProjectState> {
  ProjectBloc() : super(const ProjectState.loading()) {
    initData();
  }

  void initData() {
    emit(const ProjectState([]));
  }

  Future onSelectProject() async {

  }

  addProject(ProjectModel newProject) {
    state.maybeWhen((projects) {
      emit(ProjectState([...projects, newProject]));
    }, orElse: () {
      emit(ProjectState([newProject]));
    });
  }
}
