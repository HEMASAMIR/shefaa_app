import 'package:flutter/material.dart';
import 'package:shefaa_app_flutter/core/theming/fonts/manger_styles.dart';
import 'package:shefaa_app_flutter/core/theming/manger_color/manger_color.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: MangerStyle.font400wSize10.copyWith(color: MangerColors.black),
        ),
        GestureDetector(
          onTap: () {},
          child: Text("signUp", style: MangerStyle.font600wSize13),
        ),
      ],
    );
  }
}
