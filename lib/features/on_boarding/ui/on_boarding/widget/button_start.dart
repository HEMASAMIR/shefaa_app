import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shefaa_app_flutter/core/theming/fonts/manger_styles.dart';
import 'package:shefaa_app_flutter/core/theming/manger_color/manger_color.dart';

class ItemButtonStarted extends StatelessWidget {
  const ItemButtonStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Container(
        height: 52,

        width: 300.w,
        decoration: BoxDecoration(
          color: MangerColors.mainBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Text('Get Started', style: MangerStyle.font600wSize18),
        ),
      ),
    );
  }
}
