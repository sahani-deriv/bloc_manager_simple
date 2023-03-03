import 'package:bloc_manager_simple/bloc_manager/first_number/first_number_state_emitter.dart';
import 'package:bloc_manager_simple/bloc_manager/second_number/second_number_state_emitter.dart';
import 'package:bloc_manager_simple/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deriv_bloc_manager/manager.dart';

import 'bloc_manager/first_number/first_number_cubit.dart';
import 'bloc_manager/second_number/second_number_cubit.dart';

void main() {
  registerBlocs();
  setUpEventDispatcher();
  runApp(const MyApp());
}

registerBlocs() => BlocManager.instance
  ..register(FirstNumberCubit())
  ..register(SecondNumberCubit());

setUpEventDispatcher() => StateDispatcher(BlocManager.instance)
  ..register<FirstNumberCubit, FirstNumberStateEmitter>(
    (BaseBlocManager blocManager) => FirstNumberStateEmitter(blocManager),
  )
  ..register<SecondNumberCubit, SecondNumberStateEmitter>(
    (BaseBlocManager blocManager) => SecondNumberStateEmitter(blocManager),
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
