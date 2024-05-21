import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: Color.fromRGBO(92, 90, 232, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Text(
            'What are you focusing on today?',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                height: double.infinity,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                  children: [
                    Image.asset(
                      'assets/images/abs.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/arm.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/back.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/legs.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/glutes.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/full-body.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
