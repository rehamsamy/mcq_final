import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:get/get.dart';

class GenderView extends StatefulWidget {
  const GenderView({Key? key}) : super(key: key);

  @override
  State<GenderView> createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  bool? isMale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(value: true, groupValue: isMale, onChanged: (val) {
          setState(() {
            isMale=true;
          });
        }),
        const Icon(Icons.male,color: Colors.blue,),
        AppText('male'.tr,color: Colors.black,),
        const SizedBox(width: 20,),
        Radio(value: false, groupValue: isMale, onChanged: (val) {
          setState(() {
            isMale=false;
          });
        }),
        const Icon(Icons.female_outlined,color: Colors.pinkAccent,),
        AppText('female'.tr,color: Colors.black,),
      ],
    );
  }
}
