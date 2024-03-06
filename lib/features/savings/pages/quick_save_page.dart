import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/choose_a_wallet_section.dart';

class QuickSavePage extends StatefulWidget {
  const QuickSavePage({super.key});

  @override
  State<QuickSavePage> createState() => _QuickSavePageState();
}

class _QuickSavePageState extends State<QuickSavePage> {
  String amount ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            "assets/cashinvest.png",
            height: 100,
            width: 100,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 24),

              Text(
                "Quick Save",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

         //     Image.asset("assets/images/recent1.png", height:20, width: 20,)


          Divider(),
          Text(
            "Enter an amount",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ) ,),
          TextField(
            onChanged: (value){
              setState(() {
                amount = value;
              });
            },
            decoration: InputDecoration(
              hintText: " 5,000",
              border: OutlineInputBorder(
               // borderSide: BorderSide.none
              ),
              prefixText: "NGN ",
              prefixStyle: TextStyle(
                color:Colors.grey
              ),
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              ),
              //fillColor: Colors.grey,flutter pub add firebase_core
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
          amount.isEmpty  ? SizedBox(height: 16,) :
          ChooseAWalletSection(),
      //    SizedBox(height: 120,),
          ElevatedButton(
              onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
            child: Text("Quick Save"),
          ),
        ],
      )
    );
  }
}

