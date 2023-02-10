import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputFeild extends StatefulWidget {
  final String hinttxt;
  final icon;
  InputFeild(this.hinttxt, this.icon);

  @override
  State<InputFeild> createState() => _InputFeildState();
}

class _InputFeildState extends State<InputFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(16, 0, 0, 0),
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffffffff),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
            prefixIcon: widget.icon,
            hintText: widget.hinttxt,
            hintStyle: Theme.of(context).textTheme.labelSmall),
      ),
    );
  }
}
