import 'package:flutter_deriv_bloc_manager/manager.dart';

abstract class SecondNumberStateListener extends BaseStateListener {
  onSecondNumberIncremented(int number);
}
