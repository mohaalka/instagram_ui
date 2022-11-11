import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  final String tab1pic;

  Tab1({required this.tab1pic});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            color: Colors.blueGrey,
            child: Image.asset(tab1pic),
          ),
        );
      },
    );
  }
}
