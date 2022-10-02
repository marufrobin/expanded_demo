import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Expanded Demo"),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  expandedColor(Colors.green),
                  expandedColor(Colors.black, 3),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        expandedColor(Colors.grey, 3),
                        Expanded(
                          child: Column(
                            children: [
                              expandedColor(Colors.amber),
                              expandedColor(Colors.brown, 5)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              expandedColor(Colors.red),
                              expandedColor(Colors.teal)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              expandedColor(Colors.yellow),
                              expandedColor(Colors.deepOrange)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              expandedColor(Colors.blue),
                              expandedColor(Colors.deepOrange),
                              expandedColor(Colors.deepPurple),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              expandedColor(Colors.white),
                              expandedColor(Colors.yellow, 5),
                              expandedColor(Colors.pink),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              expandedColor(Colors.cyan),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          expandedColor(Colors.deepPurple),
                                          expandedColor(Colors.green)
                                        ],
                                      ),
                                    ),
                                    expandedColor(Colors.brown),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//Expanded method for coloring and flexing
  Expanded expandedColor(Color clr, [int flexNumber = 1]) {
    return Expanded(
      flex: flexNumber,
      child: Container(
        color: clr,
      ),
    );
  }
}
