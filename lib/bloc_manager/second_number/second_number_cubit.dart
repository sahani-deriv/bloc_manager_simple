import 'package:bloc/bloc.dart';

part 'second_number_state.dart';

class SecondNumberCubit extends Cubit<SecondNumberState> {
  SecondNumberCubit() : super(SecondNumberInitial());

  int _number = 0;

  void increment() {
    emit(SecondNumberLoading());
    Future.delayed(const Duration(seconds: 1), () {
      _number += 1;
      emit(SecondNumberIncremented(_number));
    });
  }
}
