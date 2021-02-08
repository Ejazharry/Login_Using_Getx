import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_ui/Screen/Dashboard.dart';
import 'package:flutter_login_ui/Screen/LoginPage.dart';
import 'package:get/get.dart';



class FirebaseController extends GetxController{

  FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User> _firebaseUser = Rx<User>();


 String get user => _firebaseUser.value?.email;


  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());

     print(" Auth Change :   ${_auth.currentUser}");

  }

  // function to createuser, login and sign out user


 void login(String email,String password) async
 {
   await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) => Get.offAll(Dashboard())).
       catchError((onError)=>
   Get.snackbar("Error while sign in ", onError.message));
 }

 void signout() async{
 await _auth.signOut().then((value) => Get.offAll(LoginPage()));
 }


}