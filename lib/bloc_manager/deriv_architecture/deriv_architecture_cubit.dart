import 'package:bloc/bloc.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_go/deriv_go_state_listener.dart';
import 'package:bloc_manager_simple/bloc_manager/deriv_p2p/deriv_p2p_state_listener.dart';

part 'deriv_architecture_state.dart';

class DerivArchitectureCubit extends Cubit<DerivArchitectureState>
    implements DerivGoStateListener, DerivP2PStateListener {
  DerivArchitectureCubit() : super(DerivArchitectureInitial());

  @override
  void onGoAddingNewFeature() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onGoProductionFix() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onGoRefactoring() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onGoRequestArchitectureHelp() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onGoTaskCompleted() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onP2pAddingNewFeature() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onP2pProductionFix() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onP2pRefactoring() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onP2pRequestArchitectureHelp() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }

  @override
  void onP2pTaskCompleted() {
    emit(DerivReacting(reaction: 'assets/dummy.webp'));
  }
}
