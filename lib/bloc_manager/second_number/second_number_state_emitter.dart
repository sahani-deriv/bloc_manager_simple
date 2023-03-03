import 'package:bloc_manager_simple/bloc_manager/second_number/second_number_cubit.dart';
import 'package:bloc_manager_simple/bloc_manager/second_number/second_number_state_listener.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class SecondNumberStateEmitter
    extends BaseStateEmitter<SecondNumberStateListener, SecondNumberCubit> {
  SecondNumberStateEmitter(BaseBlocManager blocManager) : super(blocManager);

  @override
  void handleStates({
    required SecondNumberStateListener stateListener,
    required Object state,
  }) {
    if (state is SecondNumberIncremented) {
      stateListener.onSecondNumberIncremented(state.number);
    }
  }
}
