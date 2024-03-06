import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Activities",
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
                "assets/images/recent1.png",
                color: Colors.red,
              ),
            ),
            title: Text("Just Registered.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: Text("an hour ago",
              style: TextStyle(fontSize: 14, color: Colors.grey),),
            trailing: ElevatedButton(
              onPressed: () {},
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),

              child: Image.asset("assets/images/recent2.png",
              width: 20,
                height: 20,
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),


            ),
          ),

        ],
      ),
    );
  }
}
