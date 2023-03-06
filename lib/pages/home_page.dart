import 'package:bloc_manager_simple/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Manager'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DerivGoWidget(),
              const SizedBox(height: 20),
              DerivP2PWidget(),
              const SizedBox(height: 20),
              DerivArchitectureWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
