import 'package:flutter/material.dart';
import 'package:stranded/screens/driver_module/accept_job.dart';
import 'package:stranded/screens/driver_module/earning.dart';
import 'package:stranded/screens/driver_module/tracking.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({super.key});
  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        AcceptJob(),
        Tracking(),
        Earning(),
      ],
    );
  }
}
