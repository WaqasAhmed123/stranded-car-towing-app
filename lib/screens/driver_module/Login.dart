import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stranded/widgets/generalwidgets.dart';
import 'package:stranded/widgets/login_signupbut.dart';
import 'package:stranded/widgets/txtfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

Genwidgetz inst = Genwidgetz();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              //every pic will be added separately. Alas!
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/login/Group 3338.png"),
                    Positioned(
                        left: 80,
                        top: 150,
                        child: Image.asset("assets/login/Group 3343.png"))
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Txtfield("Email", Icon(Icons.alternate_email_sharp)),
                      Txtfield("Password", Icon(Icons.lock)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: Theme.of(context).textTheme.labelMedium,
                          )),
                      Center(child: Log_SignBut("SignIn")),
                      inst.but("Don't have account?", "Register Now!", context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
