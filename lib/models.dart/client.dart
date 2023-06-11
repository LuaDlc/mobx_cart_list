import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = ClientBase with _$Client;

//aqui nosso cliente é um apenasum model usado como um modelo reativo
abstract class ClientBase with Store {
  @observable
  String? name;

  @action
  changeName(String value) => name = value;

  @observable
  String? email;

  @action
  changeEmail(String value) => email = value;

  @observable
  String? cpf;

  @action
  changeCpf(String value) => cpf = value;
}
