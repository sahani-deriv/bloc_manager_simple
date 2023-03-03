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
  }) {}
}
