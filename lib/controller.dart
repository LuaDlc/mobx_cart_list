import 'package:mobx/mobx.dart';

import 'models.dart/client.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client(); //instancia do modelo reativo  Client
//computed para pegar os validate e testar e assim usar pra ativar ou nao o Button
  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  //criando a validacao dos campos de nome e  email
  String? validateName() {
    if (client.name == null || client.name!.isEmpty) {
      return "Este campo é obrigatório";
    }
    return null;
  }

  String? validateEmail() {
    if (client.email == null || client.email!.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!client.email!.contains('@' 'gmail' '.com')) {
      return "Este não é um email valido";
    }
    return null;
  }
}
