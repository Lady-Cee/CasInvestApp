import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suggestion_Details extends StatelessWidget {
  const Suggestion_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12.0),
      child: Container(
        height:150,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50.0)
        ),

        child: Stack(
          children: [
            Positioned(
              bottom: 65,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Save for",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 30,
                      )
                  ),

                  Text("your Rent",

                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 30,
                        height: 0.5,
                      )
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 5, // Adjust this value as needed
              left: 25, // Adjust this value as needed
              child: ElevatedButton(
                onPressed: () { },   // Add your button onPressed logic here
                child: Text(
                  "Start Saving",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width:120,
                    height:50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/house.png',
                        width:120,
                        height:50,
                        fit: BoxFit.cover,
                      ),
                    )



                ),

              ),

            ),
          ],
        ),
      ),
    );
  }
}
