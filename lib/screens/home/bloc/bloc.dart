import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq_final/helpler/core_classes/server_gate.dart';
import 'package:mcq_final/screens/home/bloc/CategoryModel.dart';
import 'package:mcq_final/screens/home/bloc/events.dart';
import 'package:mcq_final/screens/home/bloc/states.dart';
import 'package:get/get.dart';

class CategoryBloc extends Bloc<CategoryEvents, CategoryStates> {
  CategoryBloc() : super(CategoryStateStart()) {
    on<CategoryEventStart>(_sendRequest);
  }
  ServerGate serverGate = ServerGate();
  void _sendRequest(
    CategoryEventStart event,
    Emitter<CategoryStates> emit,
  ) async {
    Get.log('data sucess');
    emit(CategoryStateStart());
    CustomResponse response = await serverGate.getFromServer(
        url: "categories.json",);
    if (response.success && response.response!.data["status"] == true) {
      Get.log('data sucess');
      CategoryModel model=CategoryModel.fromJson(response.response!.data);
      emit(CategoryStateSuccess(data: model));
    } else if (response.success && response.response!.data["status"] == false) {
      emit(CategoryStateFailed(
        errType: 422,
        msg: response.response!.data["message"],
      ));
    } else {
      Get.log('data failed');
      emit(CategoryStateFailed(
        errType: response.errType,
        msg: response.msg,
      ));
    }
  }
}

