part of 'first_number_cubit.dart';

abstract class FirstNumberState {}

class FirstNumberInitial extends FirstNumberState {}

class FirstNumberLoading extends FirstNumberState {}

class FirstNumberIncremented extends FirstNumberState {
  final int number;

  FirstNumberIncremented(this.number);
}
