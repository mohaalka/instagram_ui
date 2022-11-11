import 'package:flutter/material.dart';


class Tab4 extends StatelessWidget {
final String tab4pic;

  Tab4({required this.tab4pic});
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
            color: Colors.pink,
            child: Image.asset(tab4pic),
          ),
        );
      },
    );
  }
}