import 'package:flutter/material.dart';
import 'package:shefaa_app_flutter/core/theming/fonts/manger_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our  ",
            style: MangerStyle.font400wSize10,
          ),
          TextSpan(text: "Terms ", style: MangerStyle.font500wSize13),
          TextSpan(text: "& ", style: MangerStyle.font400wSize10),
          TextSpan(
            text: "Conditions and PrivacyPolicy",
            style: MangerStyle.font500wSize13,
          ),
        ],
      ),
    );
  }
}
