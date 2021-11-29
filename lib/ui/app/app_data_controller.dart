// import 'package:flutter/material.dart';
// import 'package:flutter_boilerplate/domain/model/account/account_model.dart';
// import 'package:flutter_boilerplate/domain/model/category/category_model.dart';
// import 'package:flutter_boilerplate/domain/model/label/label_model.dart';
// import 'package:flutter_boilerplate/domain/model/payee/payee_model.dart';
// import 'package:flutter_boilerplate/domain/model/profile/profile_model.dart';
// import 'package:flutter_boilerplate/domain/model/template_operation/template_operation_model.dart';
// import 'package:flutter_boilerplate/domain/repository/account/account_repository.dart';
// import 'package:flutter_boilerplate/domain/repository/category/category_repository.dart';
// import 'package:flutter_boilerplate/domain/repository/label/label_repository.dart';
// import 'package:flutter_boilerplate/domain/repository/payee/payee_repository.dart';
// import 'package:flutter_boilerplate/domain/repository/profile/profile_repository.dart';
// import 'package:flutter_boilerplate/domain/repository/template_operation/template_operation_repository.dart';
// import 'package:provider/provider.dart';

// class AppDataController extends StatelessWidget {
//   const AppDataController({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         StreamProvider<List<ProfileModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<ProfileRepository>();
//             return repo.watchAll();
//           },
//         ),
//         StreamProvider<List<AccountModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<AccountRepository>();
//             return repo.watchAll();
//           },
//         ),
//         StreamProvider<List<CategoryModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<CategoryRepository>();
//             return repo.watchAll();
//           },
//         ),
//         StreamProvider<List<PayeeModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<PayeeRepository>();
//             return repo.watchAll();
//           },
//         ),
//         StreamProvider<List<LabelModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<LabelRepository>();
//             return repo.watchAll();
//           },
//         ),
//         StreamProvider<List<TemplateOperationModel>>(
//           initialData: const [],
//           create: (context) {
//             var repo = context.read<TemplateOperationRepository>();
//             return repo.watchAll();
//           },
//         ),
//       ],
//       builder: (context, _) {
//         return child;
//       },
//     );
//   }
// }
