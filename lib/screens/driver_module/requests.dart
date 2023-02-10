import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stranded/widgets/request_card.dart';

class Requests extends StatelessWidget {
  const Requests({super.key});

  @override
  Widget build(BuildContext context) {
    const card = [1, 2, 3, 4];
    return Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            toolbarHeight: 90.0,
            bottom: PreferredSize(
                preferredSize: Size(0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      "You have 10 new requests",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                )),
            title: Text(
              "Online",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/driver_module/appbar_icon.png'))
            ]),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView.builder(
            itemCount: card.length,
            itemBuilder: (context, index) {
              return requestCard(context);
            },
          ),
          // child: Column(
          //   children: [
          //     requestCard(context),
          //   ],
          // ),
        ));
  }
}
