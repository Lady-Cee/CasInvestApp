import 'package:cash_invest/features/savings/pages/quick_save_page.dart';
import 'package:cash_invest/features/savings/widgets/flexible_savings_section.dart';
import 'package:cash_invest/features/savings/widgets/strict_savings_section.dart';
import 'package:flutter/material.dart';

import '../../home/widgets/card_saving_details.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
   // return Text ("Savings");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Savings"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
          icon: Icon(Icons.info_outline_rounded)
          )
        ],
      ),
          body: ListView(
            padding: EdgeInsets.all(12),
            children: [
              CardSavingDetails(
                balance: "\$24000",
                   topRightWidget: Chip(
                   label: Text(
                     "up to 13% returns",
                     style: TextStyle(color:Colors.red),
                   ),
                   backgroundColor: Colors.white,
                   shape: StadiumBorder(),
                 ),
                onClick: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return QuickSavePage();
                    }),
                  );
                },

               ),
              StrictSavingsSection(),
             FlexibleSavingsSection(),

            ],
          ),
    );
  }
}
