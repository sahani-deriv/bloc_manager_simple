import 'package:bloc_manager_simple/pages/end_page.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DerivGoWidget(),
                  const SizedBox(height: 20),
                  DerivP2PWidget(),
                ],
              ),
              const SizedBox(height: 100),
              DerivArchitectureWidget(),
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EndPage()));
                    },
                    child: const Text('Finish game')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
