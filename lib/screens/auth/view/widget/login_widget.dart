import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_buttons/app_progress_button.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text_field.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            textColor: Colors.black,
            controller: emailController,
            hintText: 'email_hint'.tr,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validateEmptyText: 'empty'.tr,
            radius: 12,
          ),
          CustomTextFormField(
            textColor: Colors.black,
            controller: passwordController,
            hintText: 'email_hint'.tr,
            keyboardType: TextInputType.text,
            prefixIcon: Icons.work_rounded,
            isPassword: true,
            suffixIcon: Icons.remove_red_eye,
            validateEmptyText: 'empty'.tr,
            radius: 12,
          ),
          AppProgressButton(
              backgroundColor: kPurpleColor,
              textColor: Colors.white,
              text: 'login'.tr,
              onPressed: (anim) {}),
          SizedBox(
            height: 15,
          ),
          AppText(
            'forget_password'.tr,
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
