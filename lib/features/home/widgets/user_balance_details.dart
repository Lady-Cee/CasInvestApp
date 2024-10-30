import 'package:cash_invest/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../invest/widgets/invest_details_card.dart';
import '../bloc/home_bloc.dart';
import 'card_saving_details.dart';

class UserBalanceDetails extends StatefulWidget {
  const UserBalanceDetails({
    super.key,
  });

  @override
  State<UserBalanceDetails> createState() => _UserBalanceDetailsState();
}

class _UserBalanceDetailsState extends State<UserBalanceDetails> {
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    var homestate = context.watch<HomeBloc>().state;


    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 150,
                child: PageView(
                    onPageChanged: (index){
                      setState(() {
                        DefaultTabController.of(context).index = index;
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: CardSavingDetails(
                          balance: "${homestate.userModel?.balance}",
                          //"${getNaira()}20000",
                          onClick:() {
                            homeBloc.updateTabIndex(1);
                          },
                          topRightWidget: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("View Savings"),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: InvestDetailsCard(),
                      ),
                    ]
                ),
              ),
              TabPageSelector(
                selectedColor: Colors.red,
                color: Colors.white,
              ),

            ],
          );
        }
      ),
    );
  }
}

