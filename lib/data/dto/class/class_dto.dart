



import 'package:flutter_application/domain/entity/class/class_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'class_dto.g.dart';

@JsonSerializable()
class ClassDto implements ClassModel{

  factory ClassDto.fromJson(Map<String, dynamic> json) => _$ClassDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClassDtoToJson(this);

  ClassDto({this.color, this.name});

  @override
  String? color;

  @override
  String? name;
}