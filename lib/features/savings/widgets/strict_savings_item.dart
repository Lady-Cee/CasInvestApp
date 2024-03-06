import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class strict_savings_item extends StatelessWidget {
  const strict_savings_item({
    super.key,
    required this.textOnButton,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.borderColor,
    required this.backgroundImage,
    required this. titleBackgroundColor,
  });

  final String textOnButton;
  final String title;
  final String subtitle;
  final Color color;
  final Color borderColor;
  final Color titleBackgroundColor;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:110,
      width: 110,
      decoration: BoxDecoration(
          color: Colors.red.shade50,
          border: Border.all(
            color: borderColor, // Choose your border color
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          )
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(textOnButton),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: titleBackgroundColor,
                   foregroundColor: Colors.white,
                 ),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),),
          Text(
            subtitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)

        ],
      ),
    );
  }
}
