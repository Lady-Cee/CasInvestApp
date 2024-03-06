import 'package:flutter/material.dart';

class TopSavingsSection extends StatelessWidget{
  const TopSavingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Savings",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 24,
              height:24,
              child: Image.asset(
                  "assets/images/cash1.png",
                color: Colors.red,
              ),
            ),
            title: Text("Cashbank",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            subtitle: Text("Auto save: Daily weekly or monthly",
                style: TextStyle(fontSize: 14, color: Colors.grey),),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("SAVE"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height:20),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 24,
              height:24,
              child: Image.asset(
                "assets/images/cash2.png",
                color: Colors.red,
              ),
            ),
            title: Text("SafeLock",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            subtitle: Text("lock funds to avoid temptations",
              style: TextStyle(fontSize: 14, color: Colors.grey),),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("LOCK"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height:20),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 24,
              height:24,
              child: Image.asset(
                "assets/images/cash3.png",
                color: Colors.red,
              ),
            ),
            title: Text("FlexNaira",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            subtitle: Text("Your emergency funds with interests",
              style: TextStyle(fontSize: 14, color: Colors.grey),),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("FUND"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}