// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 1,
        title: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              foregroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Search"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => storyItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                  itemCount: 10),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => chatItem(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 15),
          ],
        ),
      ),
    );
  }
}

Widget chatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              child: Image(
                image: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 5.75,
            ),
            CircleAvatar(
              foregroundColor: Colors.greenAccent,
              radius: 5,
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmed Ali",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "hello world",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Text(
                    "1:40",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
Widget storyItem() => Container(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                child: Image(
                  image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 5.75,
              ),
              CircleAvatar(
                foregroundColor: Colors.greenAccent,
                radius: 5,
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            "Abd El-hamed Zyada",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
