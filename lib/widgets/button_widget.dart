import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

ButtonWidget(title, context, onTap) {
  return (InkWell(
    onTap: onTap,
    child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(16, 0, 0, 0),
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          "title",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )),
  ));
}
