import 'package:cash_invest/features/savings/widgets/strict_savings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:16),
      margin: EdgeInsets.symmetric(vertical:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Strict Savings",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black38,
              )),
          // gridview for holding  savings categories
          SizedBox(
            height: 370,
              child: GridView.count(
                  crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              children: [
                strict_savings_item(
                  title: "CashInvest",
                  subtitle: "Automatic daily, weekly and monthly withdrawals",
                  color: Colors.red,
                  textOnButton: "SET UP",
                  backgroundImage: "assets/images/bkg1.png",
                  borderColor: Colors.redAccent,
                    titleBackgroundColor: Colors.red,

                ),
                strict_savings_item(
                  title: "SafeLock",
                  subtitle: "Lock funds to avoid temptations",
                  color: Colors.blue,
                  textOnButton: "LOCK MONEY",
                  backgroundImage: "assets/images/bkg6.png",
                  borderColor: Colors.blueAccent,
                  titleBackgroundColor: Colors.blue,
                ),
                strict_savings_item(
                  title: "Target Savings",
                  subtitle: "Smash your saving goal faster",
                  color: Colors.green,
                  textOnButton: "NEW GOALS",
                  backgroundImage: "assets/images/bkg7.png",
                  borderColor: Colors.greenAccent,
                  titleBackgroundColor: Colors.green,
                ),
                 strict_savings_item(
                   title: "House Money",
                   subtitle: "Save for your housing",
                   color: Colors.orange,
                   textOnButton: "ADD MONEY",
                   backgroundImage: "assets/images/bkg8.png",
                   borderColor: Colors.orangeAccent,
                   titleBackgroundColor: Colors.orange,
                 ),
              ],
              )
          ),

        ],

      ),

    );

  }
}

