import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    //  padding: EdgeInsets.symmetric(vertical:0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Money talks",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              SizedBox(width: 105),
              TextButton (
                onPressed: () {},
                child: Text("View blog",
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
                Image.asset("assets/images/person1.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person2.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person3.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person4.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person5.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person6.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person7.png"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person8.png"),
                //Text("Here"),
                SizedBox(width: 8,),
                Image.asset("assets/images/person9.png"),
              ],
            ),
          ),
        ],

      ),
    );
  }
}



