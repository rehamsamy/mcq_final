import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_cached_image.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:mcq_final/screens/question/bloc/question_model.dart';
import 'package:mcq_final/screens/question/view/widget/answer_item.dart';

class QuestionWidget extends StatefulWidget {
  Results? results;
   QuestionWidget(this.results, {Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
          width: double.infinity,
          child: AppCashedImage(
            imageUrl: userAvatar,
            borderWidth: 5,
            borderColor: kPurpleColor,
            radius: 40,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
         AppText(
          widget.results?.question??'',
          fontSize: 20,
          maxLines: 2,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                mainAxisSpacing :10,
                crossAxisSpacing : 10,
                childAspectRatio :0.8,
                mainAxisExtent:60,
              ),
              itemCount: 4,
              itemBuilder: (_, index) {
                widget.results?.incorrectAnswers?.insert(3, widget.results?.correctAnswer??'');
                return  AnswerItem(widget.results?.incorrectAnswers?[index]);
              }),
        )
      ],
    );
  }
}
