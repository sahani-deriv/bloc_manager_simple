import 'package:bloc/bloc.dart';

part 'deriv_go_state.dart';

class DerivGoCubit extends Cubit<DerivGoState> {
  DerivGoCubit() : super(DerivGoInitial());

  void startAddingNewFeature() async {
    emit(DerivGoAddingFeature());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoInitial());
    });
  }

  void startRefactoring() async {
    emit(DerivGoAddingFeature());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoInitial());
    });
  }

  void startProductionFix() async {
    emit(DerivGoAddingFeature());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoInitial());
    });
  }

  void requestArchitectureHelp() async {
    emit(DerivGoAddingFeature());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoInitial());
    });
  }
}
