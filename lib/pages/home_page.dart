// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_health/pages/util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // gretings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // hi dinorah!

                  Column(
                    children: [
                      Text(
                        'Hi, Dinorah!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '22 Jan, 2022',
                        style: TextStyle(
                          color: Colors.purple[200],
                        ),
                      ),
                    ],
                  ),

                  // notifications
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purple[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ), //FontStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              // how do you feel?

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),

              // 4 different faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // bad
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😫'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bad',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  // neutral,
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😐'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Neutral',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  // fine
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '☺'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Fine',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  // Excellent
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😁'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Excellent',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),

              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
