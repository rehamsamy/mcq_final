import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_buttons/app_progress_button.dart';
import 'package:get/get.dart';
import 'package:mcq_final/screens/auth/view/widget/login_widget.dart';
import 'package:mcq_final/screens/auth/view/widget/register_widget.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool? _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/back.png'),
        fit: BoxFit.cover,
      )),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Image.asset(
              'assets/images/child.png',
              width: 200,
              height: 200,
            ),
            Card(
              color: kAuthGreyColor,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppProgressButton(
                            backgroundColor:
                                _isLogin! ? kPurpleColor : Colors.white,
                            text: 'login'.tr,
                            textColor: _isLogin! ? Colors.white : kPurpleColor,
                            onPressed: (anim) {
                              setState(() {
                                _isLogin = true;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: AppProgressButton(
                              backgroundColor:
                                  _isLogin! ? Colors.white : kPurpleColor,
                              text: 'register'.tr,
                              textColor:
                                  _isLogin! ? kPurpleColor : Colors.white,
                              onPressed: (anim) {
                                setState(() {
                                  _isLogin = false;
                                });
                              }),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _isLogin! ? const LoginForm() : const RegisterForm(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
