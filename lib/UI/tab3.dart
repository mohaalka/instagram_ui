import 'package:flutter/material.dart';


class Tab3 extends StatelessWidget {
final String tab3pic;

  Tab3({required this.tab3pic});

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
            color: Colors.purple,
            child: Image.asset(tab3pic),
          ),
        );
      },
    );
  }
}