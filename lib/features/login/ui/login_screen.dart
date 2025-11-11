import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shefaa_app_flutter/core/theming/fonts/manger_styles.dart';
import 'package:shefaa_app_flutter/core/theming/manger_color/manger_color.dart';
import 'package:shefaa_app_flutter/core/widget/button_item.dart';
import 'package:shefaa_app_flutter/features/login/ui/widget/email_and_password.dart';
import 'package:shefaa_app_flutter/features/login/ui/widget/not_have_account.dart';
import 'package:shefaa_app_flutter/features/login/ui/widget/terms_condicitions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MangerColors.white,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 15,
            right: 15,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: MangerStyle.font700wSize24.copyWith(
                    color: MangerColors.mainBlue,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: MangerStyle.font400wSize10,
                ),
                SizedBox(height: 30.h),
                const EmailAndPassword(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "forgotPassword",
                      style: MangerStyle.font400wSize10.copyWith(
                        color: MangerColors.mainBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ButtonItem(text: "login", onPressed: () {}),
                const SizedBox(height: 50),
                const TermsAndConditions(),
                const SizedBox(height: 25),
                const NotHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
