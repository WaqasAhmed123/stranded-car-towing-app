import 'package:flutter/material.dart';
import 'package:stranded/screens/driver_module/Signup.dart';
import 'package:stranded/widgets/driver_module/image_with_text.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return (ImageWithText({
      "title": "Enable your location",
      "image": "location.png",
      "active": 0,
      "skip": true,
      "button": true,
      "screen": Signup()
    }));
  }
}
