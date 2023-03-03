import 'package:bloc/bloc.dart';

part 'deriv_architecture_state.dart';

class DerivArchitectureCubit extends Cubit<DerivArchitectureState> {
  DerivArchitectureCubit() : super(DerivArchitectureInitial());

  void startAddingNewFeature() {}
  void startRefactoring() {}
  void startProductionFix() {}
  void requestArchitectureHelp() {}
  void completeTask() {}
}
