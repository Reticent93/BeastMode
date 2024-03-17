import 'package:doodle/pages/login_page.dart';
import 'package:doodle/pages/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState  is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/gym-landing.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80,
            left: 40,
            child: Image.asset('assets/images/KingB.png'),
          ),
          Positioned(
            bottom: 80,
            left: 40,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get Fit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Get Strong',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Beast Mode!',
                    style: TextStyle(
                        color: Color.fromRGBO(92, 90, 232, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Morbi malesuada, mi non volutpat fermentum, felis nulla congue felis.',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (e) => MyLogin()),
                          );
                        },
                        child: const Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(92, 90, 232, 1),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          shadowColor: Colors.white,
                          fixedSize: const Size(140, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (e) => SignUp()),
                            );
                          },
                          child: const Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Color.fromRGBO(92, 90, 232, 1),
                            textStyle: const TextStyle(fontSize: 16),
                            elevation: 10,
                            shadowColor: Colors.white,
                            fixedSize: const Size(140, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
