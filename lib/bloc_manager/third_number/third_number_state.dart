part of 'third_number_cubit.dart';

@immutable
abstract class ThirdNumberState {}

class ThirdNumberInitial extends ThirdNumberState {}

class ThirdNumberIncremented extends ThirdNumberState {
  final int number;

  ThirdNumberIncremented(this.number);
}
