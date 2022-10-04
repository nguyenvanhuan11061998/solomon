import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/class/class_dto.dart';
import 'package:flutter_application/data/dto/project/project_dto.dart';
import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/home/project_management/widget/item_class_widget.dart';

class ClassProjectWidget extends StatefulWidget {
  final ProjectDto project;
  final GlobalKey<FormState> formKey;

  const ClassProjectWidget({Key? key, required this.project, required this.formKey}) : super(key: key);

  @override
  _ClassProjectWidgetState createState() => _ClassProjectWidgetState();
}

class _ClassProjectWidgetState extends State<ClassProjectWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            if (widget.project.listClass != null)
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                itemBuilder: (context, index) {
                  return ItemClassWidget(
                      classModel: widget.project.listClass![index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return kSpacingHeight36;
                },
                itemCount: widget.project.listClass!.length,
              ),
            kSpacingHeight18,
            InkWell(
              onTap: () {
                addNewClass();
              },
              child: Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorConstants.greyBorderColor),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void addNewClass() {
    setState(() {
      widget.project.listClass?.add(ClassDto());
    });
  }
}
