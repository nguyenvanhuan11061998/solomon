import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/class/class_dto.dart';
import 'package:flutter_application/data/dto/project/project_dto.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/home/project_management/widget/item_class_widget.dart';

import '../../../../../../generated/l10n.dart';

class AddProjectPage extends StatefulWidget {
  static const path = '/add_new_project_page';

  const AddProjectPage({Key? key}) : super(key: key);

  @override
  _AddProjectPageState createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {
  late ProjectDto newProject;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    newProject = ProjectDto();
    ClassDto classDto = ClassDto();
    newProject.listClass = [classDto];
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              kSpacingHeight24,
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/2.8),
                child: AppTextFormField(
                  hint: 'Project name',
                  initialValue: newProject.name,
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter project name';
                    }
                    newProject.name = value.trim();
                    return null;
                  },
                ),
              ),
              kSpacingHeight20,
              ItemClassWidget(
                  classModel: newProject.listClass!.first),
              Expanded(
                  child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/2,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      onAddProject();
                    },
                    child: Text(
                      S.current.next,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  void onAddProject() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pop(newProject);
    }
  }
}
