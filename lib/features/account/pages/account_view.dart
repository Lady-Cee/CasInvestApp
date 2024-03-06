import 'package:flutter/material.dart';

import '../widgets/account_grid.dart';
import '../widgets/account_list_section.dart';
import '../widgets/account_settings_1.dart';
import '../widgets/account_settings_2.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "My Account,",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
                "Cynthia Enweonwu-Arinze",
              style: TextStyle(
                  fontSize: 12.0
              ),
            )
          ],
        ),
          actions: [
            IconButton(
                color: Colors.blue,
                onPressed: (){},
                icon: Icon(
                  Icons.account_circle,
                  size: 40,
                )
            )
          ],
      ),
      body: ListView(
        padding:EdgeInsets.only(bottom:16),
        children: [
          AccountListSection(),
          AccountGrid(),
          AccountSettings1(),
          SizedBox(height: 16),
          AccountSettings2(),
        ],
      )
    );
  }
}
