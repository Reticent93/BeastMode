import 'package:doodle/pages/exercises_page.dart';
import 'package:doodle/pages/signup_page.dart';
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
                    onTap: () {},
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
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightGreenAccent,
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/bible.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 2,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
