import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_number_state.dart';

class FirstNumberCubit extends Cubit<FirstNumberState> {
  FirstNumberCubit() : super(FirstNumberInitial());

  int _number = 0;

  void increment() {
    emit(FirstNumberLoading());
    Future.delayed(const Duration(seconds: 1), () {
      _number += 1;
      emit(FirstNumberIncremented(_number));
    });
  }
}
