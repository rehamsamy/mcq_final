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
  bool? _isLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/back.png'))),
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            AppProgressButton(
                              backgroundColor:
                                  _isLogin! ? kPurpleColor : kPrimaryColor,
                              text: 'login'.tr,
                              textColor:
                                  _isLogin! ? kPurpleColor : kPrimaryColor,
                              onPressed: (anim) {
                                setState(() {
                                  _isLogin = true;
                                });
                              },
                            ),
                            AppProgressButton(
                                backgroundColor:
                                    _isLogin! ? kPrimaryColor : kPurpleColor,
                                text: 'register'.tr,
                                textColor:
                                    _isLogin! ? kPrimaryColor : kPurpleColor,
                                onPressed: (anim) {
                                  setState(() {
                                    _isLogin = false;
                                  });
                                })
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      _isLogin!?LoginForm():RegisterForm(),
                        SizedBox(height: 30,),
                        AppProgressButton(backgroundColor: kPurpleColor,textColor: Colors.white,
                            onPressed: (anim){}),
                        SizedBox(height: 30,),
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
