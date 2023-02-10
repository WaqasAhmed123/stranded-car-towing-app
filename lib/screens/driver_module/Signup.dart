import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stranded/widgets/button_widget.dart';
import 'package:stranded/widgets/generalwidgets.dart';
import 'package:stranded/widgets/login_signupbut.dart';
import 'package:stranded/widgets/txtfield.dart';
import 'package:stranded/widgets/input_feild.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

List<String> txtlist = [
  "First Name",
  "Last Name",
  "Email Address",
  "Password",
  "Mobile Number",
  "Referral Code (Optional)"
];
Genwidgetz inst = Genwidgetz();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: 100,
                          child: Image.asset("assets/signup/Group 3481.png")),
                      Positioned(
                          top: 130,
                          left: 170,
                          child: Image.asset("assets/signup/Group 3460.png")),
                      Positioned(
                          top: 100,
                          left: 330,
                          child: Image.asset("assets/signup/Group 3483.png")),
                      Positioned(
                          top: 60,
                          left: 250,
                          child: Image.asset("assets/signup/Group 3484.png")),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.63,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "SignUp",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: txtlist.length,
                              itemBuilder: (context, index) {
                                return InputFeild(txtlist[index], null);
                              }),
                        ),
                        Center(child: ButtonWidget("SignIn", context, () {})),
                        inst.but("Already have account", "SignIn", context)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
