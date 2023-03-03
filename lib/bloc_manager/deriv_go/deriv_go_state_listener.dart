import 'package:flutter_deriv_bloc_manager/manager.dart';

abstract class DerivGoStateListener extends BaseStateListener {
  void onGoAddingNewFeature();
  void onGoRefactoring();
  void onGoProductionFix();
  void onGoRequestArchitectureHelp();
  void onGoTaskCompleted();
}
