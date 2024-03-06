import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreInvestmentsItem extends StatelessWidget {
  const ExploreInvestmentsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/cashinvest.png",
            height: 120,
            width: 100,
          ),
          SizedBox(width:12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CORPORATE DEBT NOTE SERIES XXII",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 12,

                  ),
                ),
                SizedBox(height:8),
                Text("10% returns in 9 months",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(height:8),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("NGN 5000"),
                        Text("per unit",
                          style: TextStyle(
                            fontSize: 10,
                          ),),
                      ],
                    ),
                    SizedBox(width:12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("625"),
                        Text("Investors",
                          style: TextStyle(
                              fontSize: 10
                          ),),

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 4)
            ),
            child: Text("Sold Out"),
          ),
        ],
      ),


    );

  }
}