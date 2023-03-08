import 'package:bloc_manager_simple/pages/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

import '../../bloc_manager/bloc_manager.dart';

class DerivP2PWidget extends StatelessWidget {
  DerivP2PWidget({super.key});

  final derivP2PCubit = BlocManager.instance.fetch<DerivP2PCubit>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DERIV P2P', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TaskType(
                onTaskTapped: () {
                  derivP2PCubit.startAddingNewFeature();
                },
                task: 'Add new feature'),
            TaskType(
                onTaskTapped: () {
                  derivP2PCubit.startRefactoring();
                },
                task: 'Refactor'),
            TaskType(
                onTaskTapped: () {
                  derivP2PCubit.startProductionFix();
                },
                task: 'Production Fix'),
            TaskType(
                onTaskTapped: () {
                  derivP2PCubit.requestArchitectureHelp();
                },
                task: 'Request Architecture Help'),
          ],
        ),
        const SizedBox(width: 20),
        BlocBuilder<DerivP2PCubit, DerivP2PState>(
            bloc: derivP2PCubit,
            builder: (context, state) {
              if (state is DerivP2PReactingState) {
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
