import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Txtfield2 extends StatefulWidget {
  final String hinttxt;
  final icon;
  Txtfield2(this.hinttxt, this.icon);

  @override
  State<Txtfield2> createState() => _Txtfield2State();
}

class _Txtfield2State extends State<Txtfield2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(16, 0, 0, 0),
              blurRadius: 3.5,
              // spreadRadius: 2.0,
              offset: Offset(0, 7), // Shadow position
            ),
          ],
        ),
        child: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: widget.icon,
            hintText: widget.hinttxt,
          ),
        ),
      ),
    );
  }
}
