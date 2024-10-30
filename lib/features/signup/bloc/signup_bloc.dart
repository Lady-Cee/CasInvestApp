
import 'package:cash_invest/features/account/models/user.dart';
import 'package:cash_invest/features/signup/bloc/signup_state.dart';
import 'package:cash_invest/features/signup/repository/signup_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Cubit<SignupState>{
  SignupBloc(): super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  void reset(){
    emit(SignupState.empty);
  }

  void registerUser({
    required String fullName,
    required String emailAddress,
    required String password,
})async {
    //show processing state
    emit(state.copyWith(signupStatus: SignupStatus.Processing));

    try{
                  //attempt to register the user

      await signupRepository.registerUser(
          email: emailAddress,
          password: password,
      );
          // connect to firestore
      await signupRepository.saveUser(
          user: UserModel(
              emailAddress: emailAddress,
              fullName: fullName,
            balance: 5000, // remove the balance after testing the app
          ),
      );
      // If successful, update state to Successful
      emit(state.copyWith(signupStatus: SignupStatus.Successful));

    // } on FirebaseAuthException catch (e) {

      // emit(state.copyWith(signupStatus: SignupStatus.Error));
      // if(e.code == 'weak-password'){
      //   print("The password provided is not strong.");
      // }else if (e.code == 'email already in use'){
      //   print('The account already exists for that email.');
      // }
    } catch (e) {
      print("Got to error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      print(e);
    }
  }
}


