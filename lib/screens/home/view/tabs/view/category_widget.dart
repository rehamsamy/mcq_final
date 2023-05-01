import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_cached_image.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:mcq_final/helpler/pusher.dart';
import 'package:mcq_final/screens/home/bloc/CategoryModel.dart';
import 'package:mcq_final/screens/question/view/question_screen.dart';

class CategoryWidget extends StatefulWidget {
  Category ? model;
  CategoryWidget( this.model, {super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        pushAndRemoveUntil( QuestionScreen(categoryId:widget.model?.id,));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children:  [
            SizedBox(
              height: 180,
              width: 200,
              child: AppCashedImage(imageUrl:widget.model?.imagePath??userAvatar,borderWidth: 5,borderColor:kPurpleColor,
              radius: 40,),
            ),
            SizedBox(height: 30,),
            AppText(widget.model?.name??'',fontSize: 20,fontWeight: FontWeight.bold,)
          ],
        ),
      ),
    );
  }
}
