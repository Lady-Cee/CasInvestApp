import 'package:cash_invest/features/login/pages/login_page.dart';
import 'package:cash_invest/features/password/pages/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [

                  Image.asset("assets/images/star.jpg", width: 30,),
                ],
              ),
              SizedBox(height: 48),
              Text("Forgot Password", style: TextStyle(fontSize: 32, color: Colors.red.shade300, fontWeight: FontWeight.bold),),
              Text("Enter your email to reset your password"),

              SizedBox(height: 100),

              Text("Email Address"),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "e.g: example@gmail.com ",
                  filled: true,
                  fillColor: Colors.red.shade50,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  // prefixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  //  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 44),

              Row(
                children:[
                  Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context){
                                return ResetPassword();
                              })
                          );
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Adjust padding as needed
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade300),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                              // side: BorderSide(color: Colors.black, width: 1), // Adjust border color and width as needed
                            ),
                          ),
                        ),
                        child:  Text("Reset Password", style: TextStyle(color: Colors.white, fontSize:18)),
                      )
                  ),
                ],
              ),

              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context){
                        return LoginPage();
                      })
                  );
                },
                child: Center(
                  child:
                  Text("Go Back", style: TextStyle(color: Colors.red.shade300, fontSize: 16),),

                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
