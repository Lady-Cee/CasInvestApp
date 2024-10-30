import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../account/models/user.dart';

class SignupRepository{
  var auth = FirebaseAuth.instance;

  Future<void> registerUser({required String email, required String password}) async{
    // create user in firebase auth
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

    //save user details to firestore
  Future<void> saveUser({required UserModel user}) async{
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.emailAddress)
        .set(user.toJson());
  }


}