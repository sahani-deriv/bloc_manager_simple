part of 'deriv_architecture_cubit.dart';

typedef Reaction = String;

abstract class DerivArchitectureState {}

class DerivArchitectureInitial extends DerivArchitectureState {}

class DerivReacting extends DerivArchitectureState {
  final Reaction reaction;

  DerivReacting({required this.reaction});
}
