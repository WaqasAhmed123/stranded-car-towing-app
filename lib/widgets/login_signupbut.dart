import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Log_SignBut extends StatelessWidget {
  final String buttxt;
  Log_SignBut(this.buttxt);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        child: Center(
          child: Text(
            buttxt,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).primaryColor),
      ),
    );
  }
}
