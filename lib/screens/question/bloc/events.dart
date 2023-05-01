

import 'package:mcq_final/screens/question/bloc/input_data.dart';

class QuestionEvents {}

class QuestionEventStart extends QuestionEvents {
    QuestionInputData? inputData;
  QuestionEventStart(this.inputData) ;
}

