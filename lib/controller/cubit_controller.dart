import 'package:bloc/bloc.dart';

class CubitController extends Cubit<int> {
  CubitController() : super(0);

  void addNumber() {
    emit(state + 1);
  }

  void removeNumber() {
    emit(state - 1);
  }
}
