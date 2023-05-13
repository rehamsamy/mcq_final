import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mcq_final/screens/question/bloc/bloc.dart';
import 'package:mcq_final/screens/question/bloc/events.dart';
import 'package:mcq_final/screens/question/bloc/input_data.dart';
import 'package:mcq_final/screens/question/bloc/question_model.dart';
import 'package:mcq_final/screens/question/bloc/states.dart';
import 'package:mcq_final/screens/question/view/widget/question_number_item.dart';
import 'package:mcq_final/screens/question/view/widget/question_widget.dart';
import 'package:kiwi/kiwi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionScreen extends StatefulWidget {
  num? categoryId;
  String?catName;


  QuestionScreen({Key? key, this.categoryId,this.catName}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final _bloc = KiwiContainer().resolve<QuestionBloc>();

  @override
  void initState() {
    _bloc.add(QuestionEventStart(QuestionInputData(widget.categoryId)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: BlocBuilder(
            bloc: _bloc,
            builder: (context, state) {
              if (state is QuestionEventStart) {
                return const SizedBox();
              } else if (state is QuestionStateSuccess) {
                List<Results>? results=state.data?.results;
              List<Results>? catList=[];
              results?.map((e){
                if(e.catId==widget.categoryId&&e.difficulty==widget.catName){
                  catList.add(e);
                  return e;
                }
              }).toList()??[];
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                             return QuestionNumItem(index);
                        },
                        itemCount: results?.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Flexible(
                      child: PageView(
                         children: catList?.map((e) =>QuestionWidget(e)).toList()??[]
                        // const [
                        //   QuestionWidget(),
                        //   QuestionWidget(),
                        //   QuestionWidget(),
                        // ],
                      ),
                    ),
                  ],
                );
              }else{
                return SizedBox();
              }
            }),
      ),
    );
  }
}
