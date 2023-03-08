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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('DERIV ARCHITECTURE',
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        BlocBuilder<DerivArchitectureCubit, DerivArchitectureState>(
            bloc: architectureCubit,
            builder: (context, state) {
              if (state is DerivArchitectureReacting) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(state.reaction,
                        height: 100, width: 100, fit: BoxFit.cover),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TaskType(onTaskTapped: () {}, task: 'Assign to naif'),
                    TaskType(onTaskTapped: () {}, task: 'Assign to naif'),
                    TaskType(onTaskTapped: () {}, task: 'Assign to naif'),
                  ],
                );
              }
            }),
      ],
    );
  }
}
