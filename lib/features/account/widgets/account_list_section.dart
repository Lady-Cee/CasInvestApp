import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountListSection extends StatelessWidget {
  const AccountListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      padding: EdgeInsets.all(12),
    //  margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enable Finger Print/ Face ID"),
                Image.asset("assets/images/idprint.png",
                  height: 15, // Set the desired height
                  width: 15,
                ),
              SizedBox(width: 60),
              Row(
                children: [
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blue.shade700,

                  ),
                ],
              )
              ],

          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Show Dashboard Account Balances"),

              SizedBox(width: 20),
              Row(
                children: [
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blue.shade700,

                  ),
                ],
              )
            ],

          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Interest Enabled on Savings (Riba)"),
              Image.asset("assets/images/money.png",
                height: 15, // Set the desired height
                width: 15,
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blue.shade700,

                  ),
                ],
              )
            ],

          ),
        ],
      ),
    );
  }
}
