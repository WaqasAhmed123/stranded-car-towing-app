import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stranded/screens/driver_module/Login.dart';
import 'package:stranded/screens/driver_module/Signup.dart';
import 'package:stranded/screens/driver_module/accept_job.dart';
import 'package:stranded/screens/driver_module/requests.dart';
import 'package:stranded/screens/driver_module/splash1.dart';
import 'package:stranded/screens/driver_module/swipe_screens.dart';
import 'package:stranded/screens/driver_module/splash2.dart';

import 'helper/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Map<int, Color> color = {
      50: Color.fromRGBO(51, 153, 255, .1),
      100: Color.fromRGBO(51, 153, 255, .2),
      200: Color.fromRGBO(51, 153, 255, .3),
      300: Color.fromRGBO(51, 153, 255, .4),
      400: Color.fromRGBO(51, 153, 255, .5),
      500: Color.fromRGBO(51, 153, 255, .6),
      600: Color.fromRGBO(51, 153, 255, .7),
      700: Color.fromRGBO(51, 153, 255, .8),
      800: Color.fromRGBO(51, 153, 255, .9),
      900: Color.fromRGBO(51, 153, 255, 1),
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          primarySwatch: MaterialColor(0xFFFDAB1A, color),
          primaryColor: const Color(0xFFFDAB1A),
          textTheme: TextTheme(
            headlineMedium: textTheme["headlineMedium"],
            headlineSmall: textTheme["headlineSmall"],
            titleMedium: textTheme["titleMedium"],
            titleSmall: textTheme["titleSmall"],
            displayLarge: textTheme['displayLarge'],
            displayMedium: textTheme['displayMedium'],
            displaySmall: textTheme['displaySmall'],
            bodyMedium: textTheme["bodyMedium"],
            bodySmall: textTheme["bodySmall"],
            labelMedium: textTheme["labelMedium"],
            labelSmall: textTheme["labelSmall"],
          )),
      home: Signup(),
    );
  }
}
