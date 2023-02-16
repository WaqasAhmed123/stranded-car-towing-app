import 'package:flutter/material.dart';
import 'package:stranded/widgets/small_button_widget.dart';

requestCard(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(20),
      // ignore: prefer_const_literals_to_create_immutables
      boxShadow: [
        const BoxShadow(
          color: Color.fromARGB(26, 0, 0, 0),
          blurRadius: 3.5,
          spreadRadius: 2.0,
          offset: Offset(1, 3), // Shadow position
        ),
      ],
    ),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/driver_module/request1.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Callie greer",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Row(
                      children: [
                        SmallButtonWidget("Apple Pay", context, () {}),
                        const SizedBox(
                          width: 5,
                        ),
                        SmallButtonWidget("PayPal", context, () {}),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Text(
              "PICKUP",
              style: TextStyle(
                  fontSize: 8,
                  fontFamily: "Poppins",
                  color: const Color(0xff0e0e0e).withOpacity(0.4)),
            ),
            Text(
              "7958 Swift Village",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Divider(color: Colors.black),
            Text("DROPOFF",
                style: TextStyle(
                    fontSize: 8,
                    fontFamily: "Poppins",
                    color: const Color(0xff0e0e0e).withOpacity(0.4))),
            Text(
              "105 William St, Chicago, US",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "\$80.00",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff0e0e0e),
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "5.0 KM",
              style: TextStyle(
                  fontSize: 6,
                  color: Color(0xff0e0e0e).withOpacity(0.31),
                  fontWeight: FontWeight.w700),
            )
          ],
        )
      ],
    ),
  );
}
