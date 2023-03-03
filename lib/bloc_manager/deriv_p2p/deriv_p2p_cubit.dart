import 'package:bloc/bloc.dart';

part 'deriv_p2p_state.dart';

class DerivP2PCubit extends Cubit<DerivP2PState> {
  DerivP2PCubit() : super(DerivP2PInitial());

  void startTask() {
    //give states based on the task type
  }

  void completeTask() {}
}
