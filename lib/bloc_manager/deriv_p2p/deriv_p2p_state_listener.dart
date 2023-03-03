import 'package:flutter_deriv_bloc_manager/manager.dart';

abstract class DerivP2PStateListener extends BaseStateListener {
  void onP2pAddingNewFeature();
  void onP2pRefactoring();
  void onP2pProductionFix();
  void onP2pRequestArchitectureHelp();
  void onP2pTaskCompleted();
}
