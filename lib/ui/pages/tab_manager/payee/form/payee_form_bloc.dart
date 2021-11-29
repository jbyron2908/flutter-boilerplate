import 'package:flutter_boilerplate/domain/model/payee/payee_model.dart';
import 'package:flutter_boilerplate/domain/repository/payee/payee_repository.dart';

class PayeeFormBloc {
  PayeeFormBloc(this.payeeRepository);

  final PayeeRepository payeeRepository;

  String name = '';
  int picker = 0;

  Future<bool> save() async {
    var model = PayeeModel(name: name);
    await payeeRepository.save(model);
    return true;
  }
}
