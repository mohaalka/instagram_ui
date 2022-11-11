import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/UI/InstagStories.dart';
import 'package:instagram_ui/UI/tab1.dart';
import 'package:instagram_ui/UI/tab2.dart';
import 'package:instagram_ui/UI/tab3.dart';
import 'package:instagram_ui/UI/tab4.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/samiir6.png'))),
                    ),
                    Column(
                      children: [
                        Text(
                          "3212",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('posts')
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "321K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('followers')
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "321",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('following')
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alka',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('I`m Developer apps & Games'),
                        ),
                        Text(
                          'my-youtube/alka/person',
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text("Edit Profile"),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text("Edit Profile"),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text("Edit Profile"),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Stories(
                      storyImage: 'images/samiir1.png',
                      TextName: 'Story 1',
                    ),
                    Stories(
                      storyImage: 'images/samiir2.png',
                      TextName: 'Story 2',
                    ),
                    Stories(
                      storyImage: 'images/samiir3.png',
                      TextName: 'Story 3',
                    ),
                    Stories(
                      storyImage: 'images/samiir4.png',
                      TextName: 'Story 4',
                    )
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                )
              ]),
              Expanded(
                child: TabBarView(children: [
                  Tab1(tab1pic: 'images/samiir5.png'),
                  Tab2(tab2pic: 'images/samiir6.png'),
                  Tab3(tab3pic: 'images/samiir4.png'),
                  Tab4(tab4pic: 'images/samiir3.png'),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
