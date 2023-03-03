import 'package:bloc_manager_simple/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            FirstNumber(),
            SecondNumber(),
            ThirdNumber(),
          ],
        ),
      ),
    );
  }
}
