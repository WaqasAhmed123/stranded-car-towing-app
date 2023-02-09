import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});
//navigation will be added lately
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image.asset("assets/splash2/Logo.png")),
      ),
    );
  }
}
