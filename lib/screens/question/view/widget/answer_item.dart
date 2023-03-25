import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class AnswerItem extends StatefulWidget {
  const AnswerItem({Key? key}) : super(key: key);

  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: AppText('answer1')),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(18)
      ),
    );
  }
}
