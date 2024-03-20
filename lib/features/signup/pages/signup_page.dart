import 'package:cash_invest/features/signup/bloc/signup_bloc.dart';
import 'package:cash_invest/features/signup/bloc/signup_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/pages/home_page.dart';
import '../../login/pages/login_page.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String fullName = "";
  String emailAddress = "";
  String password ="";

  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
        //handle this case
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
              HomePage.route(),
          );
          bloc.reset();
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content:Text("An error occurred")));
        });
        break;

    }
    return Scaffold(
     // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                    IconButton(
                        onPressed: (){
                          _navigateToLoginPage(context);
                        },
                      icon: Icon(Icons.cancel,
                      size: 45),
                    )
                 // Image.asset("assets/images/star.jpg", width: 30,),
                ],
              ),
              SizedBox(height: 48),
              Text("Create Account!", style: TextStyle(fontSize: 32, color: Colors.red.shade300,fontWeight: FontWeight.bold),),
              Text("Create a free account and start a proper"),
              Text("financial with CashInvest"),

              SizedBox(height: 20),

              Text("Full Name"),

              SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Full Name ",
                  filled: true,
                  fillColor: Colors.red.shade50,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                onChanged: (newText){
                  fullName = newText;
                },
              ),
              SizedBox(height: 16),

              Text("Email Address"),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email Address",
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
                onChanged: (newText){
                  emailAddress = newText;
                },
              ),
              SizedBox(height: 16),
              Text("Phone Number"),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone Number",
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
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),
              SizedBox(height: 16),
              Text("Password"),
              SizedBox(height: 8),
              TextField(
                // keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: "Password",
                  // labelText: "Password",
                  //   border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.red.shade50,
                  // border: OutlineInputBorder(),
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  // prefixIcon: Icon(Icons.lock),
                  // suffixIcon: Icon(Icons.visibility_off),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  // labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                onChanged: (newText){
                  password = newText;
                },
                obscureText: true,
              ),

              SizedBox(height: 16),
              Text("Referral Phone or Promo Code (Optional)"),

              SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Referral Phone or Code ",
                  filled: true,
                  fillColor: Colors.red.shade50,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 16),
              Text("How Did You Hear About Us (Optional)"),

              SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Click To Select ",
                  filled: true,
                  fillColor: Colors.red.shade50,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 30,),

              ElevatedButton(
                    onPressed: state.signupStatus == SignupStatus.Processing ? null : (){
                      if(_isUserInputValid()){
                        bloc.registerUser(
                            fullName: fullName,
                            emailAddress: emailAddress,
                            password: password
                        );
                      }
                    },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(state.signupStatus == SignupStatus.Processing)
                      CircularProgressIndicator(),
                    Text("CREATE ACCOUNT"),
                  ],
                ),
                ),



              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have Account?", style: TextStyle(fontSize: 16, color:Colors.red.shade300),),
                  SizedBox(width: 5,),
                  TextButton(
                    onPressed: () {
                      _navigateToLoginPage(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder:(context){
                      //       return LoginPage();
                      //     })
                      // );
                    },
                    child: Text(
                      "Log in", style: TextStyle(fontSize: 18, color: Colors.red.shade300),),),
                ],
              ),


            ],

          ),
        ),
      ),
    );
  }

  void _navigateToLoginPage(BuildContext context){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context){
          return LoginPage();
    },
    )
    );
  }

  bool _isUserInputValid(){
    String errorMessage ="";
    //check to see if input is valid
    if(fullName.isEmpty){
      errorMessage = "Please fill in your full name";
    }else if(emailAddress.isEmpty){
      errorMessage = "Please fill in your email address";
    }else if(password.isEmpty || password.length < 8){
      errorMessage = "Enter a strong password with more than 7 characters";
    }
    if(errorMessage.isNotEmpty){
      //show Snackbar Alert
      ScaffoldMessenger
      .of(context)
          .showSnackBar(SnackBar(content:Text(errorMessage)));
      return false;
    }
    return true;
  }
}
