//import 'package:cash_invest/home_view.dart';
import 'package:cash_invest/features/account/pages/account_view.dart';
import 'package:cash_invest/features/invest/pages/invest_view.dart';
import 'package:cash_invest/features/savings/pages/savings_view.dart';
import 'package:flutter/material.dart';

//import '../../../home_view.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),

  ];
  var selectedIndex = 0;
 // const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: IndexedStack(
      children: listOfPages,
      index: selectedIndex,
    ),
    bottomNavigationBar: BottomNavigationBar(
     currentIndex: selectedIndex,
     unselectedItemColor: Colors.blue,
     selectedItemColor: Colors.pinkAccent,
     showSelectedLabels: true,
     showUnselectedLabels: true,
     onTap: (value){
       setState(() {
         selectedIndex = value;
       });
     },
     items:[
       BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: "Home"
       ),
       BottomNavigationBarItem(
           icon: Icon(Icons.savings),
            label: "Savings"
       ),
       BottomNavigationBarItem(
           icon: Icon(Icons.rocket_launch),
           label: "Invest"
       ),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        label: "Account"
      ),
     ],
   ),
    );
  }
}
