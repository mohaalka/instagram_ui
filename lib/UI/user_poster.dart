import 'package:flutter/material.dart';

class UserPoster extends StatelessWidget {
  final String name;
  final String Pictures;

  UserPoster({required this.name, required this.Pictures});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(Pictures), scale: 2)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          child: Image.asset(Pictures),
          height: 350,
          color: Colors.grey[500],
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.send_outlined),
                ],
              ),
              Icon(Icons.bookmark_border_outlined)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text("Liked By "),
              Text(
                "ALKA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, top: 8),
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: 'Alkamala',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'waan ku arkaa taliye halkaan ayaan kala socdaa legand ayaa noqotay wllahi talie')
              ]),
            )),
      ],
    );
  }
}
