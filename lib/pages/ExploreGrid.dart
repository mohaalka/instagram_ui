import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  final String gridImage;

  ExploreGrid({required this.gridImage});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            color: Colors.grey[300],
            child: Image.asset(gridImage),
          ),
        );
      },
    );
  }
}
