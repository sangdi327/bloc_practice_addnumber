import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class BlocController extends Bloc<NumberEvent, int> {
  BlocController() : super(0) {
    on<AddNumber>((event, emit) => emit(state + 1));
    on<RemoveNumber>((event, emit) => emit(state - 1));
  }
}

abstract class NumberEvent extends Equatable {}

class AddNumber extends NumberEvent {
  @override
  List<Object?> get props => [];
}

class RemoveNumber extends NumberEvent {
  @override
  List<Object?> get props => [];
}
