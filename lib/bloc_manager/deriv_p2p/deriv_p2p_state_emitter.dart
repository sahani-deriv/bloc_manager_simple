import 'package:bloc_manager_simple/bloc_manager/deriv_p2p/deriv_p2p_cubit.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_p2p/deriv_p2p_state_listener.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class DerivP2PStateEmitter
    extends BaseStateEmitter<DerivP2PStateListener, DerivP2PCubit> {
  DerivP2PStateEmitter(BaseBlocManager blocManager) : super(blocManager);

  @override
  void handleStates({
    required DerivP2PStateListener stateListener,
    required Object state,
  }) {
    switch (state.runtimeType) {
      case DerivP2PAddingFeature:
        stateListener.onP2pAddingNewFeature();
        break;
      case DerivP2PRefactoring:
        stateListener.onP2pRefactoring();
        break;
      case DerivP2PProductionFixing:
        stateListener.onP2pProductionFix();
        break;
      case DerivP2PRequireArchitecture:
        stateListener.onP2pRequestArchitectureHelp();
        break;
      case DerivP2PTaskCompleted:
        stateListener.onP2pTaskCompleted();
        break;
    }
  }
}
