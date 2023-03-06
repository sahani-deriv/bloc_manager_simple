import 'package:bloc/bloc.dart';

part 'deriv_go_state.dart';

class DerivGoCubit extends Cubit<DerivGoState> {
  DerivGoCubit() : super(DerivGoInitial());

  void startAddingNewFeature() async {
    emit(DerivGoAddingFeature());
    // await Future.delayed(const Duration(seconds: 5), () {
    //   emit(DerivGoTaskCompleted());
    // });
  }

  void startRefactoring() async {
    emit(DerivGoRefactoring());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoTaskCompleted());
    });
  }

  void startProductionFix() async {
    emit(DerivGoProductionFixing());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoTaskCompleted());
    });
  }

  void requestArchitectureHelp() async {
    emit(DerivGoRequireArchitecture());
    await Future.delayed(const Duration(seconds: 1), () {
      emit(DerivGoTaskCompleted());
    });
  }
}
