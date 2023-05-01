

import 'package:mcq_final/screens/home/bloc/CategoryModel.dart';

class CategoryStates {}

class CategoryStateStart extends CategoryStates {}

class CategoryStateSuccess extends CategoryStates {
  CategoryModel? data;
  CategoryStateSuccess({required
    this.data,
  });
}

class CategoryStateFailed extends CategoryStates {
  String? msg;
  int? errType, statusCode;
  CategoryStateFailed({this.msg, this.errType, this.statusCode});
}


