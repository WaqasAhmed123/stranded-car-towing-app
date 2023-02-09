import 'package:flutter/material.dart';
import 'package:stranded/screens/driver_module/location.dart';
import 'package:stranded/widgets/driver_module/image_with_text.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Earning extends StatelessWidget {
  const Earning({super.key});

  @override
  Widget build(BuildContext context) {
    return (ImageWithText({
      "title": "Earn Money",
      "image": "earning.png",
      "active": 3,
      "skip": false,
      "button": true,
      "screen": Location()
    }));
  }
}
