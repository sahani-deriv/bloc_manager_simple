import 'package:flutter_deriv_bloc_manager/manager.dart';

abstract class FirstNumberStateListener extends BaseStateListener {
  onFirstNumberIncremented(int number);
}
