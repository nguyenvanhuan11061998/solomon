import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

import '../../../../generated/l10n.dart';

class ProjectManagementPage extends StatefulWidget {
  static const path = '/project_management_page';

  const ProjectManagementPage({Key? key}) : super(key: key);

  @override
  _ProjectManagementPageState createState() => _ProjectManagementPageState();
}

class _ProjectManagementPageState extends State<ProjectManagementPage> {
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
      body: Column(
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
                  onPressed: () {},
                  child: Text(
                    S.current.add,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ],
          ),
          kSpacingHeight16,
          GridView.builder(
              itemCount: 7,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.blackOpacity5,
                    ),
                    child: Center(
                      child: Text(
                        'Project ${index + 1}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.red),
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
