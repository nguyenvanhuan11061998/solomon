import 'package:flutter/material.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../pages.dart';
import 'edit_profile/sign_up_page.dart';

class AuthenticationNavigator extends StatefulWidget {
  const AuthenticationNavigator({Key? key}) : super(key: key);

  @override
  _AuthenticationNavigatorState createState() =>
      _AuthenticationNavigatorState();
}

class _AuthenticationNavigatorState extends State<AuthenticationNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: SignInPage.path,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SignInPage.path:
            return MaterialPageRoute(builder: (context) => const SignInPage());
          case SignUpPage.path:
            return MaterialPageRoute(builder: (context) => const SignUpPage());
        }
      },
    );
  }
}
