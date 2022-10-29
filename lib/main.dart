// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 22, 196, 28),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Home",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      foregroundImage: NetworkImage(
                        "https://pps.whatsapp.net/v/t61.24694-24/294962854_717130756254254_6310246704277012578_n.jpg?ccb=11-4&oh=01_AdTPdCa0lGTniG-C9UJ9s9SsFfomAsjhphdkfxlyE9dpgw&oe=6358D6E1",
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "تيم تخرج",
                          style: TextStyle(
                            fontSize: 24,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                        Text(
                          "Ahmed : hello there ...",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      foregroundImage: NetworkImage(
                        "https://pps.whatsapp.net/v/t61.24694-24/301199831_4794630340639691_8814889210161207367_n.jpg?ccb=11-4&oh=01_AdTu8ASlYWU57Oyiew42JnAtTCSDlgDRgF8IalZJnAvNEw&oe=63587A01",
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "+201011575827",
                          style: TextStyle(
                            fontSize: 24,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                        Text(
                          "Bedo : I think it is working ...",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
