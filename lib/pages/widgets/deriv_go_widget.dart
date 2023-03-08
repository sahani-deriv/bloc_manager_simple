import 'package:bloc_manager_simple/pages/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

import '../../bloc_manager/bloc_manager.dart';

class DerivGoWidget extends StatelessWidget {
  DerivGoWidget({super.key});

  final derivGoCubit = BlocManager.instance.fetch<DerivGoCubit>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DERIV GO', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TaskType(
                onTaskTapped: () {
                  derivGoCubit.startAddingNewFeature();
                },
                task: 'Add new feature'),
            TaskType(
                onTaskTapped: () {
                  derivGoCubit.startRefactoring();
                },
                task: 'Refactor'),
            TaskType(
                onTaskTapped: () {
                  derivGoCubit.startProductionFix();
                },
                task: 'Production Fix'),
            TaskType(
                onTaskTapped: () {
                  derivGoCubit.requestArchitectureHelp();
                },
                task: 'Request Architecture Help'),
          ],
        ),
        const SizedBox(width: 20),
        BlocBuilder<DerivGoCubit, DerivGoState>(
            bloc: derivGoCubit,
            builder: (context, state) {
              if (state is DerivGoReactingState) {
                return Image.asset(state.reaction,
                    height: 100, width: 100, fit: BoxFit.cover);
              } else {
                return Container();
              }
            }),
      ],
    );
  }
}
