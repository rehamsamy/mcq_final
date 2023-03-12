import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_buttons/app_progress_button.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text_field.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mcq_final/screens/auth/view/widget/gender_widget.dart';
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final birthdateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            textColor: Colors.black,
            controller: nameController,
            hintText: 'name_hint'.tr,
            keyboardType: TextInputType.text,
            prefixIcon: Icons.person,
            validateEmptyText: 'empty'.tr,
            radius: 12,
          ),
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
            controller: phoneController,
            hintText: 'phone_hint'.tr,
            keyboardType: TextInputType.number,
            prefixIcon: Icons.phone_android,
            validateEmptyText: 'empty'.tr,
            radius: 12,
          ),
          InkWell(
           onTap:() =>_showDatePicker(context) ,
            child: IgnorePointer(
              child: CustomTextFormField(
                textColor: Colors.black,
                controller: birthdateController,
                hintText: 'birthdate_hint'.tr,
                keyboardType: TextInputType.text,
                prefixIcon: Icons.calendar_month,
                validateEmptyText: 'empty'.tr,
                radius: 12,
              ),
            ),
          ),
          GenderView(),
          CustomTextFormField(
            textColor: Colors.black,
            controller: passwordController,
            hintText: 'password_hint'.tr,
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
              text: 'register'.tr,
              onPressed: (anim) {}),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void _showDatePicker(BuildContext ctx) async{
    var _picker = await showDatePicker(context: ctx,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime.now());
    String formattedDate = DateFormat('yyyy-MM-dd').format(_picker as DateTime);
    setState(() {
      birthdateController.text=formattedDate;
    });

    if(_picker==null){
      return;
    }
  }
}
