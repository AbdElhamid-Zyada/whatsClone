// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TestStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image(
              image: NetworkImage(
                  "https://pps.whatsapp.net/v/t61.24694-24/243223815_1119082322063194_4334476928733186335_n.jpg?ccb=11-4&oh=01_AdR1qEKRjTePqdXENyYKH0gMpQhfStTfTkw0YoGWjMp0Jw&oe=637F3DC6")),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              "Abd El-hamed Zyada",
              style: TextStyle(
                backgroundColor: Colors.black12,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
