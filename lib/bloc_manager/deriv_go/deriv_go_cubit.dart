// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_p2p/deriv_p2p_state_listener.dart';

part 'deriv_go_state.dart';

class DerivGoCubit extends Cubit<DerivGoState>
    implements DerivP2PStateListener {
  DerivGoCubit() : super(DerivGoInitial());

  void startAddingNewFeature() async {
    emit(DerivGoAddingFeature());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivGoTaskCompleted());
    });
  }

  void startRefactoring() async {
    emit(DerivGoRefactoring());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivGoTaskCompleted());
    });
  }

  void startProductionFix() async {
    emit(DerivGoProductionFixing());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivGoTaskCompleted());
    });
  }

  void requestArchitectureHelp() async {
    emit(DerivGoRequireArchitecture());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivGoTaskCompleted());
    });
  }

  @override
  void onP2pAddingNewFeature() {}

  @override
  void onP2pProductionFix() {
    emit(DerivGoReactingState(reaction: 'assets/laughing.gif'));
  }

  @override
  void onP2pRefactoring() {}

  @override
  void onP2pRequestArchitectureHelp() {}

  @override
  void onP2pTaskCompleted() async {
    emit(DerivGoReactingState(reaction: 'assets/celebrate.gif'));
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivGoInitial());
    });
  }
}
