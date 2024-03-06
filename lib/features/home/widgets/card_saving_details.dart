import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CardSavingDetails extends StatelessWidget {
  const CardSavingDetails({
    super.key,
    required this.topRightWidget,
    required this.balance,
    this.onClick,
  });

  final Widget topRightWidget;
  final String balance;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16.0),

        ),
        padding: EdgeInsets.all(8.0),
        height:160,
        child: Stack(
            children: [
              ElevatedButton.icon(
                  onPressed: onClick,
                  icon: Icon(Icons.add),
                  label: Text("Quick Cash"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: Colors.blueAccent,
                    disabledForegroundColor: Colors.white,
                  )
              ),
              Positioned(
                top: 0,
                right: 0,
                child: topRightWidget,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Saved Cash",
                          style: TextStyle(color: Colors.white)),

                      Text(
                          balance,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 20
                          )
                      )
                    ],
                  ),
              )
            ]
        )
      ),
    );
  }
}
