import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class QuestionNumItem extends StatefulWidget {
  int index;
   QuestionNumItem(this.index);

  @override
  State<QuestionNumItem> createState() => _QuestionNumItemState();
}

class _QuestionNumItemState extends State<QuestionNumItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: widget.index==2?LinearGradient(
          colors: [
           kPurpleColor, kAccentColor
          ]
        ):null,
        border: Border.all(color: Colors.white,width: 1.5)
      ),
      child: Center(child: AppText('${widget.index+1}')),
    );
  }
}
