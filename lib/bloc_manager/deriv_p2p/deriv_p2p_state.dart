part of 'deriv_p2p_cubit.dart';

abstract class DerivP2PState {}

class DerivP2PInitial extends DerivP2PState {}

class DerivP2PAddingFeature extends DerivP2PState {}

class DerivP2PRefactoring extends DerivP2PState {}

class DerivP2PProductionFixing extends DerivP2PState {}

class DerivP2PRequireArchitecture extends DerivP2PState {}

class DerivP2PTaskCompleted extends DerivP2PState {}
