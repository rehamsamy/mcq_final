import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq_final/helpler/core_classes/server_gate.dart';
import 'package:get/get.dart';
import 'package:mcq_final/screens/question/bloc/events.dart';
import 'package:mcq_final/screens/question/bloc/question_model.dart';
import 'package:mcq_final/screens/question/bloc/states.dart';

class QuestionBloc extends Bloc<QuestionEvents, QuestionStates> {
  QuestionBloc() : super(QuestionStateStart()) {
    on<QuestionEventStart>(_sendRequest);
  }
  ServerGate serverGate = ServerGate();

  void _sendRequest(
      QuestionEventStart event,
    Emitter<QuestionStates> emit,
  ) async {
   // ServerGate.BASE_URL='https://opentdb.com/api.php';
    //    https://opentdb.com/api_category.php
    Get.log('data sucess');
    emit(QuestionStateStart());
    CustomResponse response = await serverGate.getFromServer(
        url: 'questions.json',params: event.inputData!.toJson() );
    if (response.success && response.response!.data["response_code"] == 0) {
      Get.log('data sucess');
      QuestionModel model=QuestionModel.fromJson(response.response!.data);
      emit(QuestionStateSuccess(data: model));
    } else if (response.success && response.response!.data["status"] == false) {
      emit(QuestionStateFailed(
        errType: 422,
        msg: response.response!.data["message"],
      ));
    } else {
      Get.log('data failed');
      emit(QuestionStateFailed(
        errType: response.errType,
        msg: response.msg,
      ));
    }
  }
}

