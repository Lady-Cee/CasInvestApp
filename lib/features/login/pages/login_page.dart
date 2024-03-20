import 'package:cash_invest/features/password/pages/forgot_password.dart';
import 'package:cash_invest/features/signup/bloc/signup_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/pages/home_page.dart';
import '../../signup/pages/signup_page.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_state.dart';

//import '../home/pages/home_page.dart';
//import '../jobs/home_page.dart';
//import '../register/register_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return LoginPage();
  },
  );

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;

    switch(state.loginStatus){
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
              HomePage.route(),
          );
          bloc.reset();
        });
        break;
      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occurred")));
        });
        break;
      case LoginStatus.InvalidEmailAddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("You entered an invalid email address")));
          bloc.resetStatusToInitial();

        });

        break;

      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("You entered an invalid password")));
          bloc.resetStatusToInitial();
        });
        break;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Row(
              //   children: [
              //
              //     Image.asset("assets/images/star.jpg", width: 30, ),
              //   ],
              // ),
              SizedBox(height: 78),
              Text("Login", style: TextStyle(fontSize: 32, color: Colors.red.shade300, fontWeight: FontWeight.bold),),
              Text("Securely login to use your CashInvest"),

              SizedBox(height: 90),

              Text("Email Address"),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                   hintText: "example@gmail.com ",
                  //labelText:"Phone Number",
                  // border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.red.shade50,
                  // border: OutlineInputBorder(),
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
                 bloc.setEmailAddress(newText);
                },

              ),
              SizedBox(height: 44),

              Text("Your Password"),
              SizedBox(height: 8),
              TextField(
               // keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: "*************",
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
                  bloc.setPassword(newText);
                },
                obscureText: true,
              ),


              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  bloc.onSubmit();
                },

                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder:(context){
                    //       return HomePage();
                    //     })
                    // );

                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                  ),
                ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       if(state.loginStatus == LoginStatus.Processing)
                         CircularProgressIndicator(),
                       Text("LOG IN"),
                     ],
                   )
              ),

              // Row(
              //   children:[
              //     Expanded(
              //         child: TextButton(
              //           onPressed: () {
              //             Navigator.push(
              //                 context,
              //                 MaterialPageRoute(builder:(context){
              //                   return HomePage();
              //                 })
              //             );
              //           },
              //           style: ButtonStyle(
              //             padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              //               EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Adjust padding as needed
              //             ),
              //             backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade300),
              //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //               RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
              //                 // side: BorderSide(color: Colors.black, width: 1), // Adjust border color and width as needed
              //               ),
              //             ),
              //           ),
              //           child:  Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               if(state.loginStatus == LoginStatus.Processing)
              //                 CircularProgressIndicator() ,
              //               Text("LOG IN", style: TextStyle(color: Colors.white, fontSize:18)),
              //             ],
              //           ),
              //         )
              //     ),
              //   ],
              // ),
              SizedBox(height: 20,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: 16, color:Colors.red.shade300),),
                  SizedBox(width: 5,),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder:(context){
                            return SignupPage();
                          })
                      );
                    },
                    child: Text(
                      "Register", style: TextStyle(fontSize: 16, color: Colors.red.shade300),),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context){
                        return ForgotPassword();
                      })
                  );
                },
                child: Center(
                  child:
                      Text("Forgot Your Password?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                ),
              ),

            ],

          ),
        ),
      ),
    );

  }

}
