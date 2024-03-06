import 'package:cash_invest/features/savings/widgets/strict_savings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleSavingsSection extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 0),
    //  margin: EdgeInsets.symmetric(vertical:16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Flexible Savings",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black38,
          ),
      ),
    //flexible section
    SizedBox(
      height: 250,
      child: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
     // mainAxisSpacing: 8,
        shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
    strict_savings_item(
      title: "Flex Dollar",
      subtitle: "Earn in dollars, save interest",
      color: Colors.indigo,
      textOnButton: "\$300",
      backgroundImage: "assets/images/bkg1.png",
      borderColor: Colors.indigoAccent,
      titleBackgroundColor: Colors.indigo,

    ),
        strict_savings_item(
          title: "Flex Naira",
          subtitle: "Your emergency funds with interest",
          color: Colors.blueGrey,
          textOnButton: "NGN 5000000",
          backgroundImage: "assets/images/bkg7.png",
          borderColor: Colors.blueGrey,
          titleBackgroundColor: Colors.blueGrey,

        ),
    ],
      ),
    ),
      ],

    ),
    );
  }
}
