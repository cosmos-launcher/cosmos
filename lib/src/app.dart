import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBar(
                    isScrollable: true,
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.start,
                    indicator: const BoxDecoration(border: null),
                    unselectedLabelColor: Colors.grey.shade400,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w900),
                    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
                    tabs: const [
                      Tab(text: "Platforms"),
                      Tab(text: "Settings")
                    ],
                  ),
                  const Text("TEST")
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          padding: const EdgeInsets.only(top: 10),
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Icon(Icons.directions_transit),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
