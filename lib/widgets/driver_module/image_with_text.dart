import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stranded/screens/driver_module/accept_job.dart';
import 'package:stranded/screens/driver_module/earning.dart';

import '../../screens/driver_module/tracking.dart';
import '../button_widget.dart';

class ImageWithText extends StatefulWidget {
  final props;
  ImageWithText(this.props);

  @override
  State<ImageWithText> createState() => _ImageWithTextState();
}

class _ImageWithTextState extends State<ImageWithText> {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/driver_module/${widget.props["image"]}",
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              widget.props["title"],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Visibility(
              visible: widget.props["button"] ? true : false,
              child: Column(children: [
                ButtonWidget(
                  "next",
                  context,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widget.props["screen"]),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                )
              ])),
          Visibility(
            visible: widget.props["skip"] ? true : false,
            child: InkWell(
              onTap: () {},
              child: Text(
                "Skip",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: widget.props["active"] == 0 ? false : true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AcceptJob()),
                    );
                  },
                  constraints: const BoxConstraints(
                    maxWidth: 16,
                    maxHeight: 16,
                  ),
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.circle,
                    semanticLabel: 'circle_icon',
                  ),
                  color: widget.props["active"] == 1
                      ? const Color(0xfffdab1a)
                      : const Color(0xff6e6e6e).withOpacity(0.3),
                  iconSize: 16.0,
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tracking()),
                    );
                  },
                  constraints: const BoxConstraints(
                    maxWidth: 16,
                    maxHeight: 16,
                  ),
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.circle,
                    semanticLabel: 'circle_icon',
                  ),
                  color: widget.props["active"] == 2
                      ? const Color(0xfffdab1a)
                      : const Color(0xff6e6e6e).withOpacity(0.3),
                  iconSize: 16.0,
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Earning()),
                    );
                  },
                  constraints: const BoxConstraints(
                    maxWidth: 16,
                    maxHeight: 16,
                  ),
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.circle,
                    semanticLabel: 'circle_icon',
                  ),
                  color: widget.props["active"] == 3
                      ? const Color(0xfffdab1a)
                      : const Color(0xff6e6e6e).withOpacity(0.3),
                  iconSize: 16.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    )));
  }
}
