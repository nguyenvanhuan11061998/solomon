import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/pages/authentication/edit_profile/sign_up_page.dart';
import 'package:flutter_application/ui/widgets/app_text_form_field.dart';
import 'package:flutter_application/utils/app_constants.dart';
import 'package:flutter_application/utils/color.dart';
import 'package:get_it/get_it.dart';

import '../../../../generated/l10n.dart';

class SignInPage extends StatefulWidget {
  static const String path = 'sign_in_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  late final GlobalKey<FormState> _formKey;
  String username = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in', style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 57),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextFormField(
                  hint: S.current.user_name,
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    username = value.trim();
                    return null;
                  },
                ),
                kSpacingHeight16,
                AppTextFormField(
                  hint: 'Password',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập password';
                    }
                    password = value.trim();
                    return null;
                  },
                ),
                kSpacingHeight28,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ColorConstants.greyBorderColor
                      ),
                      child: Center(
                        child: Text(
                          'G',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    kSpacingWidth16,
                    Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorConstants.greyBorderColor
                      ),
                      child: Center(
                        child: Text(
                          'F',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 89,
                      height: 44,
                      child: ElevatedButton(
                          onPressed: () {
                            onLogin();
                          },
                          child: Text(
                            S.current.sign_in,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                      ),
                    ),
                  ],
                ),
                kSpacingHeight24,
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignUpPage.path);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign up',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                kSpacingHeight32,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Guest',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.runTask(GetIt.instance.get<AuthBloc>().login(username, password));
    }
  }
}
