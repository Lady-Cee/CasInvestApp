import 'package:cash_invest/features/home/widgets/opportunity_section.dart';
import 'package:cash_invest/features/invest/widgets/invest_details_card.dart';
import 'package:flutter/material.dart';

import '../widgets/tab_section.dart';

class InvestView extends StatelessWidget {
  const InvestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("My Investments"),
        centerTitle: true,
    actions: [
    IconButton(
    onPressed: () {},
    icon: Icon(Icons.info_outline_rounded)
    )
    ],
    ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          InvestDetailsCard(),
          Divider(),
          OpportunitySection(),
          TabSection(),
        ],
      ),
    );
  }
}
