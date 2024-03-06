import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../invest/pages/explore_investments_page.dart';

class OpportunitySection extends StatelessWidget {
  const OpportunitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical:4),
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Vetted Opportunities",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
             // SizedBox(width: 35),
              TextButton (
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context){
                        return ExploreInvestmentsPage();
                  })
                  );
                  },
                child: Row(
                  children: [
                    Text("Find more",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),

                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                )

              ),

            ],
          ),
        SizedBox(
          height: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              VOItem(),
              VOItem(),
              VOItem(),
            ],
          ),
        )

        ],

      ),
    );
  }
}

class VOItem extends StatelessWidget {
  const VOItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              "assets/images/vet1.png",
          width: 152,
          ),
          Text(
            "Corporate Debt",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
          Text("10% return in 9 months")
        ],

    ),
      // margin: EdgeInsets.symmetric(vertical: 8),
      // height: 100,
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Image.asset("assets/images/vet1.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet2.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet3.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet4.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet5.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet6.png"),
      //     SizedBox(width: 8,),
      //     Image.asset("assets/images/vet7.png"),
      //   ],
      // ),
    );
  }
}

