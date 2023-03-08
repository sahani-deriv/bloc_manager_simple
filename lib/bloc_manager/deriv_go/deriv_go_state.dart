part of 'deriv_go_cubit.dart';

abstract class DerivGoState {}

class DerivGoInitial extends DerivGoState {}

class DerivGoAddingFeature extends DerivGoState {}

class DerivGoRefactoring extends DerivGoState {}

class DerivGoProductionFixing extends DerivGoState {}

class DerivGoRequireArchitecture extends DerivGoState {}

class DerivGoReactingState extends DerivGoState {
  final String reaction;

  DerivGoReactingState({required this.reaction});
}

class DerivGoTaskCompleted extends DerivGoState {}
