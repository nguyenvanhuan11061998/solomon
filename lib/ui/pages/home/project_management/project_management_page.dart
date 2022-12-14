import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/project/project_dto.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/project/project_bloc.dart';
import 'package:flutter_application/ui/blocs/project/project_state.dart';
import 'package:flutter_application/ui/pages/home/project_management/project_handle/create_new_project/add_project_page.dart';
import 'package:flutter_application/ui/pages/home/project_management/project_handle/edit_project/edit_project_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';

class ProjectManagementPage extends StatefulWidget {
  static const path = '/project_management_page';

  const ProjectManagementPage({Key? key}) : super(key: key);

  @override
  _ProjectManagementPageState createState() => _ProjectManagementPageState();
}

class _ProjectManagementPageState extends State<ProjectManagementPage> {
  late ProjectBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ProjectBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects', style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings, size: 20, color: Colors.black),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            kSpacingHeight24,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User name',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.red),
                ),
                SizedBox(
                  width: 89,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddProjectPage.path).then((value) {
                        if (value != null) {
                          _bloc.addProject(value as ProjectDto);
                        }
                      });
                    },
                    child: Text(
                      S.current.add,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
            kSpacingHeight16,
            Expanded(
              child: BlocBuilder<ProjectBloc, ProjectState>(
                bloc: _bloc,
                builder: (context, state) {
                  return state.when((projects) {
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      itemCount: projects.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          onSelectProject(projects[index] as ProjectDto);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.blackOpacity10,
                                ),
                              ),
                            ),
                            kSpacingHeight10,
                            Text(
                              'Project ${index + 1}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                      loading: () => const Center(
                            child: CupertinoActivityIndicator(),
                          ),
                      error: (error) => Center(
                            child: Text(
                              'Empty',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.red),
                            ),
                          ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSelectProject(ProjectDto projectDto) {
    Navigator.of(context).pushNamed(ProjectEditPage.path, arguments: projectDto);
  }
}
