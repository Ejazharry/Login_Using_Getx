import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screen/Dashboard.dart';
import 'package:flutter_login_ui/Screen/LoginPage.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_login_ui/isSignedIn.dart';


import 'InstanceBinding.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InstanceBinding(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: IsSignedIn(),
      routes: {
        '/login':(context)=> LoginPage(),
        '/dashboard':(context)=>Dashboard(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


    );
  }
}

