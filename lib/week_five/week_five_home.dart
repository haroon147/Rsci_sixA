import 'package:flutter/material.dart';

import 'TabViewOne.dart';

class WeekFiveHome extends StatelessWidget {
  const WeekFiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade400,
          title: const Text("WEEK5SIXA"),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              icon: const Icon(Icons.add_call),
              text: "Call",
            ),
            Tab(
              child:const Icon(Icons.chat),
            ),
            Tab(
              child: Icon(Icons.call),
            )
          ]),
        ),
        body: TabBarView(children: [
          TabViewOne(),
          Center(child: Text("Tab2")),
          Text("Tab3"),
        ]),
      ),
    );
  }
}
