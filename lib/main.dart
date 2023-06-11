import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<Controller>(
            create: (_) => Controller(),
            dispose: (_, controller) => controller.dispose(),
          )
        ],
        child: MaterialApp(
          title: 'Flutter MObx',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true),
          home: const MyHomePage(),
        ));
  }
}
