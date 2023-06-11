import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_cart_list/body.dart';

import 'controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //instancia da controller
  final controller = GetIt.I.get<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Observer(builder: (_) {
              return Text(controller.isValid
                  ? 'formulario Validado'
                  : 'Formulario nao validado');
            })),
        body: const BodyWidget());
  }
}
