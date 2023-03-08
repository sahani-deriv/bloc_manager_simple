import 'package:bloc/bloc.dart';
import 'package:bloc_manager_simple/bloc_manager/bloc_manager.dart';

part 'deriv_p2p_state.dart';

class DerivP2PCubit extends Cubit<DerivP2PState>
    implements DerivGoStateListener {
  DerivP2PCubit() : super(DerivP2PInitial());

  void startAddingNewFeature() async {
    emit(DerivP2PAddingFeature());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  void startRefactoring() async {
    emit(DerivP2PRefactoring());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  void startProductionFix() async {
    emit(DerivP2PProductionFixing());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  void requestArchitectureHelp() async {
    emit(DerivP2PRequireArchitecture());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  @override
  void onGoAddingNewFeature() {
    emit(DerivP2PReactingState(reaction: 'assets/drumroll.gif'));
  }

  @override
  void onGoProductionFix() {
    emit(DerivP2PReactingState(reaction: 'assets/laughing.gif'));
  }

  @override
  void onGoRefactoring() {}

  @override
  void onGoRequestArchitectureHelp() {}

  @override
  void onGoTaskCompleted() async {
    emit(DerivP2PReactingState(reaction: 'assets/celebrate.gif'));
    await Future.delayed(const Duration(seconds: 3), () {
      emit(DerivP2PInitial());
    });
  }
}
