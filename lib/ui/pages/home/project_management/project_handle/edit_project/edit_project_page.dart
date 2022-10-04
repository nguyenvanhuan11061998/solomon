



import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/project/project_dto.dart';
import 'package:flutter_application/ui/pages/home/project_management/project_handle/edit_project/widget/class_project_widget.dart';
import 'package:flutter_application/ui/pages/home/project_management/project_handle/edit_project/widget/reference_img_project_widget.dart';

import '../../../../../../domain/entity/project/project_model.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../utils/app_constants.dart';
import '../../../../../../utils/color.dart';
import '../../../../../widgets/app_text_form_field.dart';

class ProjectEditPage extends StatefulWidget {
  static const path = '/project_edit_page';

  final ProjectModel project;

  const ProjectEditPage({Key? key, required this.project}) : super(key: key);

  @override
  _ProjectEditPageState createState() => _ProjectEditPageState();
}

class _ProjectEditPageState extends State<ProjectEditPage> {

  late ProjectDto projectDto;
  late int indexTab;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    projectDto = widget.project as ProjectDto;
    indexTab = 0;
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          child: Column(
            children: [
              kSpacingHeight24,
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/2.8),
                child: AppTextFormField(
                  hint: 'Project name',
                  initialValue: projectDto.name,
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter project name';
                    }
                    projectDto.name = value.trim();
                    return null;
                  },
                ),
              ),
              kSpacingHeight20,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (indexTab != 0) {
                        setState(() {
                          indexTab = 0;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (indexTab == 0)
                              ? Colors.black
                              : ColorConstants.blackOpacity10),
                      child: Text('Class',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: indexTab == 0 ? Colors.white : Colors.black)),
                    ),
                  ),
                  kSpacingWidth12,
                  InkWell(
                    onTap: () {
                      if (indexTab != 1) {
                        setState(() {
                          indexTab = 1;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (indexTab == 1)
                              ? Colors.black
                              : ColorConstants.blackOpacity10),
                      child: Text('Reference img',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: indexTab == 1 ? Colors.white : Colors.black)),
                    ),
                  ),
                ],
              ),
              if (indexTab == 0)
                Expanded(child: ClassProjectWidget(project: projectDto, formKey: _formKey,)),
              if (indexTab == 1)
                Expanded(child: ReferenceImgProjectWidget())
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width/2,
            height: 44,
            child: ElevatedButton(
              onPressed: () {
                onSaveEditProject();
              },
              child: Text(
                S.current.save,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onSaveEditProject() {
    if (_formKey.currentState!.validate()) {

    }
  }
}