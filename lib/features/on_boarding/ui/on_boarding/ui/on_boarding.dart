import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shefaa_app_flutter/core/theming/fonts/manger_styles.dart';
import 'package:shefaa_app_flutter/features/on_boarding/ui/on_boarding/widget/button_start.dart';
import 'package:shefaa_app_flutter/features/on_boarding/ui/on_boarding/widget/doctor_logo_text.dart';
import 'package:shefaa_app_flutter/features/on_boarding/ui/on_boarding/widget/logo_text.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const LogoAndText(),
                const DoctorAndlogAndText(),
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                  style: MangerStyle.font400wSize10,
                ),
                const ItemButtonStarted(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
