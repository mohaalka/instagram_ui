import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/ExploreGrid.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: ExploreGrid(
          gridImage: 'images/samiir4.png',
        ));
  }
}
