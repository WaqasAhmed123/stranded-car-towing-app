import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stranded/Login.dart';
import 'package:stranded/Signup.dart';
import 'package:stranded/splash1.dart';
import 'package:stranded/splash2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //alot of correction needed esp in text
          primarySwatch: Colors.yellow,
          primaryColor: Color(0xFFFDAB1A),
          textTheme: TextTheme(
            displayMedium: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                // fontWeight: FontWeight.w100,
                color: Colors.black),
            displaySmall: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                color: Colors.white70),
            labelSmall: TextStyle(
              fontSize: 14,
              color: Colors.black,fontFamily:"Poppins",
              fontWeight: FontWeight.bold,
            ),
          )),
      home: Login(),
    );
  }
}
