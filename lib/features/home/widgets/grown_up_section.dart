// use stl to have stateless widget and stf for stateful widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GrownUpSection extends StatelessWidget {
  const GrownUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Grown Ups",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              SizedBox(width: 90),
              TextButton (
                onPressed: () {},
                child: Text("Read Comics",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),

                ),

              ),
              Theme(
                data: Theme.of(context).copyWith(
                  iconTheme: IconThemeData(
                    color:Colors.blue,
                  ),
                ),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 100,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/images/gu6.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu1.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu7.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu2.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu3.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu4.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu8.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu9.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/gu5.png"),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
