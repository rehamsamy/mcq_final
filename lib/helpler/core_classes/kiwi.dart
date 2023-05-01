
import 'package:kiwi/kiwi.dart';
import 'package:mcq_final/screens/home/bloc/bloc.dart';
import 'package:mcq_final/screens/question/bloc/bloc.dart';

void initKiwi() {
  KiwiContainer container = KiwiContainer();
  container.registerFactory((c) => CategoryBloc());
  container.registerFactory((c) => QuestionBloc());
  // container.registerFactory((c) => RegisterBloc());
  // container.registerFactory((c) => ProductBloc());
  // container.registerFactory((c) => ProductDetailBloc());
}
