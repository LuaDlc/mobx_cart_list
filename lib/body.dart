import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  _textField({String? labelText, onChanged, String? errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(builder: (_) {
              return _textField(
                  labelText: "name",
                  errorText: controller.validateName(),
                  onChanged: controller.client.changeName);
            }),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return _textField(
                  labelText: "email",
                  errorText:
                      controller.validateEmail(), //mostrará a mensagem de erro
                  onChanged: controller.client
                      .changeEmail); // chama a action p mudar o nome para oq o usuario digitar
            }),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return TextButton(
                  onPressed: controller.isValid
                      ? () {}
                      : null, //se isValid for true retorna a funcao, se nao retorna null ou nao ativa o button
                  child: const Text('Salvar'));
            }),
          ],
        ));
  }
}
