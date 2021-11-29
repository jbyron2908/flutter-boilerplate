import 'package:collection/collection.dart';
import 'package:flutter_boilerplate/domain/model/operation_type/operation_type_model.dart';

class OperationTypeConstants {
  static OperationTypeModel deposit =
      const OperationTypeModel(id: 'deposit', title: 'Deposit');

  static OperationTypeModel withdrawal =
      const OperationTypeModel(id: 'withdrawal', title: 'Withdrawal');

  static List<OperationTypeModel> operationTypeList = [
    deposit,
    withdrawal,
  ];

  static OperationTypeModel getDefault() {
    return deposit;
  }

  static OperationTypeModel getById(String id) {
    return operationTypeList.firstWhereOrNull(
          (item) => item.id == id,
        ) ??
        getDefault();
  }
}
