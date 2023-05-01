

import 'package:mcq_final/screens/home/bloc/CategoryModel.dart';
import 'package:mcq_final/screens/question/bloc/question_model.dart';

class QuestionStates {}

class QuestionStateStart extends QuestionStates {}

class QuestionStateSuccess extends QuestionStates {
  QuestionModel? data;
  QuestionStateSuccess({required
    this.data,
  });
}

class QuestionStateFailed extends QuestionStates {
  String? msg;
  int? errType, statusCode;
  QuestionStateFailed({this.msg, this.errType, this.statusCode});
}


