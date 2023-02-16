import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

SmallButtonWidget(title, context, onTap) {
  return (InkWell(
    onTap: onTap,
    child: Container(
        width: 60,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(16, 0, 0, 0),
              blurRadius: 3.5,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 8,
            fontFamily: "Poppins",
            color: Color(0xff0e0e0e),
          ),
        )),
  ));
}
