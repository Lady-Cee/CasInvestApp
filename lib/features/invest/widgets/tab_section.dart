import 'package:flutter/material.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(

            tabs:[
              Tab(text: "Active"),
            Tab(text: "Matured",)
            ]
          ),
          SizedBox(
           // height:MediaQuery.of(context).size.height; this will fill the entire screen
            height: 400,
            child: TabBarView(
              children: [
                Container(
                  child: Text("Active Investment"),
                ),
                Container(
                  child: Text("Mature Investments"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
