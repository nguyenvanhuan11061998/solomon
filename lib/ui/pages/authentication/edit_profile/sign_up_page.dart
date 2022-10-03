




import 'dart:developer' as developer;
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/color.dart';
import '../../../widgets/app_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  static const path = 'sign_up_page';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
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
            child: Icon(Icons.arrow_back, size: 20, color: Colors.black,),
          ),
        ),
        title: Text('Sign up', style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 57, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextFormField(
                  hint: 'Name?',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'ID',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'Password',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'email',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'company',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'Purpose?',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight18,
                AppTextFormField(
                  hint: 'Sample?',
                  backgroundColor: ColorConstants.greyBorderColor,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập username';
                    }
                    return null;
                  },
                ),
                kSpacingHeight36,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 89,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text(
                          S.current.sign_in,
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
                        },
                        child: Text(
                          S.current.sign_in,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}