import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Txtfield extends StatefulWidget {
  final String hinttxt;
  final icon;
  Txtfield(this.hinttxt, this.icon);

  @override
  State<Txtfield> createState() => _TxtfieldState();
}

class _TxtfieldState extends State<Txtfield> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.white70,
      //confirm shadow color
      child: TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all( 15),
          prefixIcon: widget.icon,
          hintText: widget.hinttxt,
        ),
      ),
    );
  }
}
