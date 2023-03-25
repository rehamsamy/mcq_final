import 'package:flutter/material.dart';
import 'package:mcq_final/screens/question/view/widget/question_number_item.dart';
import 'package:mcq_final/screens/question/view/widget/question_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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
        child: Column(
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
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
           Flexible(
             child: PageView(
               children: const [
                 QuestionWidget(),
                 QuestionWidget(),
                 QuestionWidget(),
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}
