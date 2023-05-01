import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class AnswerItem extends StatefulWidget {
  String ? incorrectAnswer;
   AnswerItem(this. incorrectAnswer, {Key? key}) : super(key: key);
  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(18)
      ),
      child: Center(child: AppText(widget.incorrectAnswer??'')),
    );
  }
}
