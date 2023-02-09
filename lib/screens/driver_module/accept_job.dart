import 'package:flutter/material.dart';
import 'package:stranded/widgets/driver_module/image_with_text.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AcceptJob extends StatelessWidget {
  const AcceptJob({super.key});

  @override
  Widget build(BuildContext context) {
    return (ImageWithText({
      "title": "Accept a job",
      "image": "accept_job.png",
      "active": 1,
      "skip": true,
      "button": false,
    }));
  }
}
