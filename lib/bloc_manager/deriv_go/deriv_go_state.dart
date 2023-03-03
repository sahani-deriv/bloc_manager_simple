part of 'deriv_go_cubit.dart';

abstract class DerivGoState {}

class DerivGoInitial extends DerivGoState {}

class DerivGoAddingFeature extends DerivGoState {}

class DerivGoRefactoring extends DerivGoState {}

class DerivGoProductionFixing extends DerivGoState {}

class DerivGoRequireArchitecture extends DerivGoState {}

class DerivGoTaskCompleted extends DerivGoState {}
