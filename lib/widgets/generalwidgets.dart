import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Genwidgetz extends StatelessWidget {
//these can be accessed outside context build, this is a general file for further widgets too
  Genwidgetz();
  but(String txt, String buttxt, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              buttxt,
              style: TextStyle(color: Colors.yellow),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
