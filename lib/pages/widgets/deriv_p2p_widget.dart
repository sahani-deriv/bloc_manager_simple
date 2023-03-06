import 'package:bloc_manager_simple/pages/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

import '../../bloc_manager/bloc_manager.dart';

class DerivP2PWidget extends StatelessWidget {
  DerivP2PWidget({super.key});

  final derivGoCubit = BlocManager.instance.fetch<DerivGoCubit>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('DERIV P2P', style: Theme.of(context).textTheme.titleLarge),
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
    );
  }
}
