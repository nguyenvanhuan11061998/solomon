



import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'project_dto.g.dart';

@JsonSerializable()
class ProjectDto extends ProjectModel{

  factory ProjectDto.fromJson(Map<String, dynamic> json) => _$ProjectDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectDtoToJson(this);

  ProjectDto(this.image, this.name);

  @override
  String? image;

  @override
  String? name;
}