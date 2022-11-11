import 'package:flutter/material.dart';

class VideoGrid extends StatelessWidget {
  final String gridImage;
  VideoGrid({required this.gridImage});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            color: Colors.blueGrey,
            child: Image.asset(gridImage),
          ),
        );
      },
    );
  }
}
