import 'package:cash_invest/features/home/widgets/blog_section.dart';
import 'package:cash_invest/features/invest/widgets/invest_details_card.dart';
import 'package:flutter/material.dart';

import '../widgets/card_saving_details.dart';
import '../widgets/grown_up_section.dart';
import '../widgets/my_todo_section.dart';
import '../widgets/recent_activity_section.dart';
import '../widgets/suggestion_details.dart';
import '../widgets/suggestion_section.dart';
import '../widgets/top_savings_section.dart';
import '../widgets/user_balance_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
            "Hello Cynthia",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),

        ),
        Text(
            "Do more with your finances",
          style: TextStyle(
          fontSize: 12.0
          ),
        ),
    ],
        ),
          actions: [
            IconButton(
              color: Colors.red,
              onPressed: (){},
              icon: Icon(
                Icons.account_circle,
                size: 40,
              )
            )
          ]
    ),
    body: ListView(
      padding: EdgeInsets.all(12.0),
      children: [
        UserBalanceDetails(),

        MyTodoSection(),
        TopSavingsSection(),
        SuggestionsSection(),

     //SizedBox(height:5),
        BlogSection(),
        GrownUpSection(),
        RecentActivitySection(),
   //     Suggestion_Details(),
    ],
    ),




    floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),
    shape: CircleBorder(),
    onPressed: (){
    print("i clicked");
     },
       ),
    );
  }
}

