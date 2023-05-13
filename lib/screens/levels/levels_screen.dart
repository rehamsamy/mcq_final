import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:mcq_final/helpler/pusher.dart';
import 'package:mcq_final/screens/home/bloc/CategoryModel.dart';
import 'package:mcq_final/screens/question/view/question_screen.dart';
import 'package:mcq_final/screens/question/view/widget/answer_item.dart';

class LevelsScreen extends StatefulWidget {
  num ? categoryId;
   LevelsScreen({this.categoryId,Key? key}) : super(key: key);

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    'assets/images/back.png',
    ),
    fit: BoxFit.fill,
    )),
        child:Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              InkWell(onTap:(){
                push( QuestionScreen(categoryId:widget.categoryId,catName:'سهل'));
              },child: AnswerItem('سهل')),
              SizedBox(height:20),
              InkWell(onTap:(){
                push( QuestionScreen(categoryId:widget.categoryId,catName:'متوسط'));
              },child: AnswerItem('متوسط')),
              SizedBox(height:20),
              InkWell(onTap:(){
                push( QuestionScreen(categoryId:widget.categoryId,catName:'صعب'));
              },child: AnswerItem('صعب')),
            ],
          ),
        ),
    )
    );
  }
}
