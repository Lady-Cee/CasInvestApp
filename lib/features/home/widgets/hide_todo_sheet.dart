import 'package:cash_invest/features/home/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/bkg1.png",
            height: 80,
            width: 80,
          ),
          SizedBox(height: 24),
          Text(
              "Hide To-Do List",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
          ),
          SizedBox(height: 24),
          Text("Temporarily hide all to do list till tomorrow"),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Remind me later"),
                          content: Text("Are you sure yo want to hide your to do list till tomorrow"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                context.read<HomeBloc>().hideTodoList();
                                print("button pressed");
                              },
                            child: Text("Yes, remove it"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                );
              },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(
                color: Colors.red.shade700,
                width: 2,
              )

            ),
            child: Text(
                "Hide Todo List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),

          )
        ],
      ),
    );
  }
}