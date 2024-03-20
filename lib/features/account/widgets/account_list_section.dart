import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/account_bloc.dart';
import '../bloc/account_state.dart';

class AccountListSection extends StatefulWidget {
  const AccountListSection({super.key});

  @override
  State<AccountListSection> createState() => _AccountListSectionState();
}

class _AccountListSectionState extends State<AccountListSection> {
  var switchValue = false;
  var switchValueTwo = false;
  var switchValueThree = false;


  @override
  Widget build(BuildContext context) {
    AccountBloc accountBloc = context.watch<AccountBloc>();
    AccountState accountState = accountBloc.state;
    var switchValue = accountState.switchBtn;
    var switchValueTwo = accountState.switchBtnTwo;
    var switchValueThree = accountState.switchBtnThree;


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
                    value: switchValue,
                    onChanged: (value) {
                        if (switchValue == false){
                          accountBloc.switchBtnOn();
                        } else {
                          accountBloc.switchBtnOff();
                        }
                    },
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
                    value: switchValueTwo,
                    onChanged: (value) {
                      if (switchValueTwo == false){
                        accountBloc.switchBtnOnTwo();
                      } else {
                        accountBloc.switchBtnOffTwo();
                      }
                    },
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
                    value: switchValueThree,
                    onChanged: (value) {
                      if (switchValueThree == false){
                        accountBloc.switchBtnOnThree();
                      } else {
                        accountBloc.switchBtnOffThree();
                      }
                    },
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
