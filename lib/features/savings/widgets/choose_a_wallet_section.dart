import 'package:cash_invest/features/savings/widgets/wallet_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseAWalletSection extends StatelessWidget {
  const ChooseAWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 80,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Choose a wallet to top up",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),),
          Wrap(
            children: [
              WalletItem(
                title: "CashInvest",
                balance: "700083",
              ),
              WalletItem(
                title: "CashyFlex",
                balance: "6000",
              )
            ],
          ),
        ],
      ),
    );
  }
}

