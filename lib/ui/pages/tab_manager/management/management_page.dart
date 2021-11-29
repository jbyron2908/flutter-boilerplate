import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/log/logger.dart';
import 'package:flutter_boilerplate/domain/model/payee/payee_model.dart';
import 'package:flutter_boilerplate/ui/navigation/app_router.dart';
import 'package:flutter_boilerplate/ui/widget/helper/ui_helpers.dart';

class ManagementPage extends StatelessWidget {
  const ManagementPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          title: const Text('Profiles'),
          leading: const Icon(Icons.account_circle),
          onTap: () {
            AppRouter.navigateToProfile(context);
          },
        ),
        UIHelper.horizontalDivider,
        const ListTile(
          title: Text('Accounts'),
          leading: Icon(Icons.account_balance),
          // onTap: () => controller.goToAccountList(),
        ),
        UIHelper.horizontalDivider,
        ListTile(
          title: const Text('Categories'),
          leading: const Icon(Icons.category),
          onTap: () {
            AppRouter.navigateToCategory(context);
          },
        ),
        UIHelper.horizontalDivider,
        ListTile(
          title: const Text('Payees'),
          leading: const Icon(Icons.people),
          onTap: () {
            AppRouter.navigateToPayee(context, onResult);
          },
        ),
      ],
    );
  }

  void onResult(PayeeModel payee) {
    Log.i("Category selected: ${payee.toJson()}");
  }
}
