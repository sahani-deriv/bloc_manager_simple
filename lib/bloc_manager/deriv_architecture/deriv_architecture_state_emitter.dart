import 'package:bloc_manager_simple/bloc_manager/deriv_architecture/deriv_architecture_cubit.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_architecture/deriv_architecture_state_listener.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class DerivArchitectureStateEmitter extends BaseStateEmitter<
    DerivArchitectureStateListener, DerivArchitectureCubit> {
  DerivArchitectureStateEmitter(BaseBlocManager blocManager)
      : super(blocManager);

  @override
  void handleStates({
    required DerivArchitectureStateListener stateListener,
    required Object state,
  }) {}
}
