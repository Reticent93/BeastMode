import 'dart:ui';

import 'package:doodle/pages/bible_page.dart';
import 'package:doodle/pages/exercises_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (e) => Exercises()));
                    },
                    child: Image.asset(
                      'assets/images/weights.jpg',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (e) => Exercises()));
                      },
                      child: Text(
                        'Exercises',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 30,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Drawer(
                          backgroundColor: Colors.orangeAccent,
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (e) => Bible()));
                    },
                    child: Image.asset(
                      'assets/images/bible.jpg',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 2,
                      width: double.infinity,
                    ),
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (e) => Bible()));
                      },
                      child: Text(
                        'Scripture',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
