import 'package:bloc_manager_simple/bloc_manager/deriv_go/deriv_go_cubit.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_go/deriv_go_state_listener.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class DerivGoStateEmitter
    extends BaseStateEmitter<DerivGoStateListener, DerivGoCubit> {
  DerivGoStateEmitter(BaseBlocManager blocManager) : super(blocManager);

  @override
  void handleStates({
    required DerivGoStateListener stateListener,
    required Object state,
  }) {
    switch (state.runtimeType) {
      case DerivGoAddingFeature:
        stateListener.onGoAddingNewFeature();
        break;
      case DerivGoRefactoring:
        stateListener.onGoRefactoring();
        break;
      case DerivGoProductionFixing:
        stateListener.onGoProductionFix();
        break;
      case DerivGoRequireArchitecture:
        stateListener.onGoRequestArchitectureHelp();
        break;
      case DerivGoTaskCompleted:
        stateListener.onGoTaskCompleted();
        break;
    }
  }
}
