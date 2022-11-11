import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  final String tab2pic;

  Tab2({required this.tab2pic});
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
            color: Colors.deepOrange,
            child: Image.asset(tab2pic),
          ),
        );
      },
    );
  }
}
