import 'dart:convert';
import 'package:flutter_application/data/dto/authentication_dto.dart';
import 'package:flutter_application/data/dto/project/project_dto.dart';
import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalService {
  final String kKeyAuth = 'key_auth';
  final String kKeyProject = 'key_project';

  //NOTE: List key not delete when user logout
  final List<String> keyExcludes = [];

  final SharedPreferences sharedPreferences = GetIt.instance.get();

  bool isAuthorized() {
    return sharedPreferences.containsKey(kKeyAuth);
  }

  AuthenticationDto? getAuthenticationDto() {
    if (isAuthorized()) {
      return AuthenticationDto.fromJson(
          json.decode(sharedPreferences.getString(kKeyAuth)!));
    } else {
      return null;
    }
  }

  Future saveAuth(AuthenticationDto? authenticationDto) {
    if (authenticationDto == null) {
      return clear();
    } else {
      return sharedPreferences.setString(
          kKeyAuth, json.encode(authenticationDto.toJson()));
    }
  }

  Future clear() async {
    final keys = sharedPreferences.getKeys();
    keys.removeAll(keyExcludes);
    for (final key in keys) {
      await sharedPreferences.remove(key);
    }
  }

  Future saveProject(ProjectDto? project) {
    return sharedPreferences.setString(
        kKeyProject, (project == null) ? '' : json.encode(project.toJson()));
  }

  ProjectModel? getLocalProject() {
    if (!sharedPreferences.containsKey(kKeyProject) ||
        (sharedPreferences.getString(kKeyProject) ?? '') == '') {
      return null;
    } else {
      return ProjectDto.fromJson(
          json.decode(sharedPreferences.getString(kKeyProject)!));
    }
  }
}
