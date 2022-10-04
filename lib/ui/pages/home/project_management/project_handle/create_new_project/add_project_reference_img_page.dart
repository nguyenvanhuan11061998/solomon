


import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/project/project_model.dart';

class AddProjectReferenceImgPage extends StatefulWidget {
  static const path = '/add_project_reference_img';

  final ProjectModel project;

  const AddProjectReferenceImgPage({Key? key, required this.project}) : super(key: key);

  @override
  _AddProjectReferenceImgPageState createState() => _AddProjectReferenceImgPageState();
}

class _AddProjectReferenceImgPageState extends State<AddProjectReferenceImgPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}