import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/GetXHelper/FirebaseController.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends GetWidget<FirebaseController> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/assets/backgroundUI.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,40 , 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.blue[400]
                            )
                        ),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      ),
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  HeightBox(
                      20
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: pass,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.blue[400]
                            )
                        ),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      ),
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  HeightBox(20),



                  GestureDetector(
                      onTap: (){
                        print("Login Clicked Event");
                        _login();
                      },
                      child: "Login".text.white.light.xl.makeCentered().box.white.shadowOutline(outlineColor: Colors.grey).color(Colors.blue).roundedLg.make().w(150).h(40)),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }

  void _login() {

    controller.login(email.text, pass.text);
  }

}



