import 'package:bloc_manager_simple/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

import 'bloc_manager/bloc_manager.dart';

void main() {
  registerBlocs();
  setUpEventDispatcher();
  runApp(const MyApp());
}

registerBlocs() => BlocManager.instance
  ..register(DerivGoCubit())
  ..register(DerivP2PCubit())
  ..register(DerivArchitectureCubit());

setUpEventDispatcher() => StateDispatcher(BlocManager.instance)
  ..register<DerivGoCubit, DerivGoStateEmitter>(
    (BaseBlocManager blocManager) => DerivGoStateEmitter(blocManager),
  )
  ..register<DerivP2PCubit, DerivP2PStateEmitter>(
    (BaseBlocManager blocManager) => DerivP2PStateEmitter(blocManager),
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Manager Example Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
