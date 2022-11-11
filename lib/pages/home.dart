import 'package:flutter/material.dart';
import 'package:instagram_ui/UI/InstagStories.dart';
import 'package:instagram_ui/UI/user_poster.dart';

class Homez extends StatelessWidget {
  final List people = [
    ['images/p4.jpg', 'Alkamala'],
    [
      'images/samiir1.png',
      'haliima',
    ],
    [
      'images/samiir3.png',
      'ahmed',
    ],
    [
      'images/samiir5.png',
      'farhiya',
    ],
    [
      'images/samiir6.png',
      'sucaad',
    ],
    ['images/samiir2.png', 'Zakariye']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Stories(
                    storyImage: people[index][0],
                    TextName: people[index][1],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPoster(
                    Pictures: people[index][0],
                    name: people[index][1],
                  );
                },
              ),
            )
          ],
        ));
  }
}
