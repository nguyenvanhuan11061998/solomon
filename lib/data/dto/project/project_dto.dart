



import 'package:flutter_application/domain/entity/class/class_model.dart';
import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../class/class_dto.dart';
part 'project_dto.g.dart';

@JsonSerializable()
class ProjectDto extends ProjectModel{

  factory ProjectDto.fromJson(Map<String, dynamic> json) => _$ProjectDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectDtoToJson(this);

  ProjectDto({this.name, this.listClass});

  @override
  String? name;

  @override
  List<ClassDto>? listClass;
}