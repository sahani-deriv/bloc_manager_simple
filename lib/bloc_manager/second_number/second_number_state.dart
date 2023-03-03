part of 'second_number_cubit.dart';

abstract class SecondNumberState {}

class SecondNumberInitial extends SecondNumberState {}

class SecondNumberLoading extends SecondNumberState {}

class SecondNumberIncremented extends SecondNumberState {
  final int number;

  SecondNumberIncremented(this.number);
}
