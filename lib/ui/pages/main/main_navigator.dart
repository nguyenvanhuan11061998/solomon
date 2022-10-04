import 'package:flutter/material.dart';
import 'package:flutter_application/data/data.dart';
import 'package:flutter_application/domain/entity/project/project_model.dart';
import 'package:flutter_application/utils/navigator_support.dart';
import 'package:get_it/get_it.dart';

import '../home/project_management/project_handle/create_new_project/add_project_page.dart';
import '../home/project_management/project_handle/edit_project/edit_project_page.dart';
import '../home/project_management/project_management_page.dart';
import '../pages.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {

  late String initRouter;

  @override
  void initState() {
    super.initState();
    if (GetIt.instance.get<LocalService>().getLocalProject() == null) {
      initRouter = ProjectManagementPage.path;
    } else {
      initRouter = HomePage.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: initRouter,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case HomePage.path:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case ProjectManagementPage.path:
            return MaterialPageRoute(
                builder: (context) => const ProjectManagementPage());
          case AddProjectPage.path:
            return MaterialPageRoute(
                builder: (context) => const AddProjectPage());
          case ProjectEditPage.path:
            ProjectModel projectModel = setting.arguments as ProjectModel;
            return MaterialPageRoute(
                builder: (context) => ProjectEditPage(project: projectModel,));
        }
        return null;
      },
    );
  }
}
