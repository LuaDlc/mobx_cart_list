import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'controller.dart';
import 'home.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller>(Controller());
  //forma preguicosa de registrar o singleton-
  //só instancia quando inicia o app a primeira vez
  //getIt.registerLazySingleton<Controller>(Controller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MObx',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}
