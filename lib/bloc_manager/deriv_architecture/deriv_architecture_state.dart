part of 'deriv_architecture_cubit.dart';

typedef Reaction = String;

abstract class DerivArchitectureState {}

class DerivArchitectureInitial extends DerivArchitectureState {}

class DerivArchitectureReacting extends DerivArchitectureState {
  final Reaction reaction;

  DerivArchitectureReacting({required this.reaction});
}
