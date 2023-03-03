import 'package:bloc/bloc.dart';
import 'package:bloc_manager_simple/bloc_manager/first_number/first_number_state_listener.dart';
import 'package:bloc_manager_simple/bloc_manager/second_number/second_number_state_listener.dart';

part 'third_number_state.dart';

class ThirdNumberCubit extends Cubit<ThirdNumberState>
    implements FirstNumberStateListener, SecondNumberStateListener {
  ThirdNumberCubit() : super(ThirdNumberInitial());

  int _number = 0;

  @override
  void onFirstNumberIncremented(int number) {
    _number += number;
    emit(ThirdNumberIncremented(_number));
  }

  @override
  void onSecondNumberIncremented(int number) {
    _number += number;
    emit(ThirdNumberIncremented(_number));
  }
}
