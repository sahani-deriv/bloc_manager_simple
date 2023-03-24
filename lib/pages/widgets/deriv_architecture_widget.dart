import 'package:bloc_manager_simple/bloc_manager/deriv_architecture/deriv_architecture_cubit.dart';
import 'package:bloc_manager_simple/pages/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

class DerivArchitectureWidget extends StatelessWidget {
  DerivArchitectureWidget({super.key});

  final architectureCubit =
      BlocManager.instance.fetch<DerivArchitectureCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('DERIV ARCHITECTURE',
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        BlocConsumer<DerivArchitectureCubit, DerivArchitectureState>(
            bloc: architectureCubit,
            listener: (context, state) {
              if (state is DerivAssigningToTeam) {
                showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        child: Image.asset(
                          state.chat,
                          width: 650,
                          fit: BoxFit.cover,
                        ),
                      );
                    });
              }
            },
            builder: (context, state) {
              if (state is DerivArchitectureReacting) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(state.reaction,
                        height: 300, width: 450, fit: BoxFit.cover),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TaskType(
                        onTaskTapped: () {
                          architectureCubit.assignToNaif();
                        },
                        task: 'Assign to Naif'),
                    TaskType(
                        onTaskTapped: () {
                          architectureCubit.assignToMohammad();
                        },
                        task: 'Assign to Muhammad'),
                    TaskType(
                        onTaskTapped: () {
                          architectureCubit.assignToSahani();
                        },
                        task: 'Assign to Sahani'),
                  ],
                );
              }
            }),
      ],
    );
  }
}
