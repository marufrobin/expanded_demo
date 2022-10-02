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
          title: Text("Expanded Demo"),
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.amber,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(color: Colors.brown),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
