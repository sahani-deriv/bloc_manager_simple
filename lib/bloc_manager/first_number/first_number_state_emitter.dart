import 'package:bloc_manager_simple/bloc_manager/first_number/first_number_cubit.dart';
import 'package:bloc_manager_simple/bloc_manager/first_number/first_number_state_listener.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class FirstNumberStateEmitter
    extends BaseStateEmitter<FirstNumberStateListener, FirstNumberCubit> {
  FirstNumberStateEmitter(BaseBlocManager blocManager) : super(blocManager);

  @override
  void handleStates({
    required FirstNumberStateListener stateListener,
    required Object state,
  }) {
    if (state is FirstNumberIncremented) {
      stateListener.onFirstNumberIncremented(state.number);
    }
  }
}
