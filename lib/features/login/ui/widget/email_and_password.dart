import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shefaa_app_flutter/core/theming/manger_color/manger_color.dart';
import 'package:shefaa_app_flutter/core/widget/textfeild_item.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool _obscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  // late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ItemTextField(
            controller: emailController,
            validator: (data) {
              return null;
            },
            hintText: 'Email',
          ),
          const SizedBox(height: 10),
          ItemTextField(
            controller: passwordController,
            validator: (data) {
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                size: 18,
                color: MangerColors.black,
              ),
            ),
            hintText: 'Password',
            obscureText: _obscureText,
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
