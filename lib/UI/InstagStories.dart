import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String TextName;
  final String storyImage;
  Stories({
    required this.TextName,
   required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(storyImage)
                )
                ),
            
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(TextName)
        ],
      ),
    );
  }
}
