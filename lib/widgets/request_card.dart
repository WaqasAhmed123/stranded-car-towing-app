import 'package:flutter/material.dart';
import 'package:stranded/widgets/small_button_widget.dart';

requestCard(context) {
  return Stack(
    children: [
      Column(
        children: [
          Row(
            children: [
              Image.asset('assets/driver_module/request1'),
              Column(
                children: [
                  Text("Callie greer"),
                  Row(
                    children: [
                      SmallButtonWidget("Apple Pay", context, () {}),
                      SmallButtonWidget("PayPal", context, () {}),
                    ],
                  )
                ],
              )
            ],
          ),
          // Text("PICKUP"),
          // Text("7958 Swift Village"),
          // Divider(color: Colors.black),
          // Text("DROPOFF"),
          // Text("105 William St, Chicago, US"),
        ],
      )
    ],
  );
}
