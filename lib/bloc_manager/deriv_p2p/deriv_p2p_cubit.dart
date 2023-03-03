import 'package:bloc/bloc.dart';

part 'deriv_p2p_state.dart';

class DerivP2PCubit extends Cubit<DerivP2PState> {
  DerivP2PCubit() : super(DerivP2PInitial());

  void startAddingNewFeature() async {
    emit(DerivP2PAddingFeature());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivP2PInitial());
    });
  }

  void startRefactoring() async {
    emit(DerivP2PRefactoring());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  void startProductionFix() async {
    emit(DerivP2PProductionFixing());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivP2PTaskCompleted());
    });
  }

  void requestArchitectureHelp() async {
    emit(DerivP2PRequireArchitecture());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivP2PTaskCompleted());
    });
  }
}
