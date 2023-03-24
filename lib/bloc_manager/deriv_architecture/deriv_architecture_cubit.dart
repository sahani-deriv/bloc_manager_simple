import 'package:bloc/bloc.dart';
import 'package:bloc_manager_simple/bloc_manager/bloc_manager.dart';

part 'deriv_architecture_state.dart';

class DerivArchitectureCubit extends Cubit<DerivArchitectureState>
    implements DerivGoStateListener, DerivP2PStateListener {
  DerivArchitectureCubit() : super(DerivArchitectureInitial());

  void assignToNaif() async {
    emit(DerivAssigningToTeam(chat: 'assets/chats/naif.png'));
  }

  void assignToMohammad() async {
    emit(DerivAssigningToTeam(chat: 'assets/chats/iran.png'));
  }

  void assignToSahani() async {
    emit(DerivAssigningToTeam(chat: 'assets/chats/sahani.png'));
  }

  @override
  void onGoAddingNewFeature() {
    emit(DerivArchitectureReacting(reaction: 'assets/drumroll.gif'));
  }

  @override
  void onGoProductionFix() {
    emit(DerivArchitectureReacting(reaction: 'assets/omg.gif'));
  }

  @override
  void onGoRefactoring() {
    emit(DerivArchitectureReacting(reaction: 'assets/seriously.gif'));
  }

  @override
  void onGoRequestArchitectureHelp() {
    emit(DerivArchitectureReacting(reaction: 'assets/helping.gif'));
  }

  @override
  void onGoTaskCompleted() async {
    emit(DerivArchitectureInitial());
  }

  @override
  void onP2pAddingNewFeature() {
    emit(DerivArchitectureReacting(reaction: 'assets/drumroll.gif'));
  }

  @override
  void onP2pProductionFix() {
    emit(DerivArchitectureReacting(reaction: 'assets/laughing.gif'));
  }

  @override
  void onP2pRefactoring() {
    emit(DerivArchitectureReacting(reaction: 'assets/late.gif'));
  }

  @override
  void onP2pRequestArchitectureHelp() {
    emit(DerivArchitectureReacting(reaction: 'assets/ignore.gif'));
  }

  @override
  void onP2pTaskCompleted() async {
    emit(DerivArchitectureInitial());
  }
}
