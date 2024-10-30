//import 'package:cash_invest/home_view.dart';
import 'package:cash_invest/features/account/pages/account_view.dart';
import 'package:cash_invest/features/home/bloc/home_bloc.dart';
import 'package:cash_invest/features/invest/pages/invest_view.dart';
import 'package:cash_invest/features/savings/pages/savings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import '../../../home_view.dart';
import '../bloc/home_state.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {
  static route()=> MaterialPageRoute(builder: (context) {
    return HomePage();
  },);

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
 // var selectedIndex = 0;

  @override
  void initState(){
    super.initState();
    context.read<HomeBloc>().loadUserDetails();
  }



  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    int selectedIndex = homeState.tabindex;

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
      homeBloc.updateTabIndex(value);
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
