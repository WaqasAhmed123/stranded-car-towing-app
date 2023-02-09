import 'package:flutter/material.dart';
import 'package:stranded/widgets/driver_module/image_with_text.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tracking extends StatelessWidget {
  const Tracking({super.key});

  @override
  Widget build(BuildContext context) {
    return (ImageWithText({
      "title": "Tracking Realtime",
      "image": "tracking.png",
      "active": 2,
      "skip": true,
      "button": false
    }));
  }
}
