import 'package:flutter/material.dart';

class Bible extends StatelessWidget {
  const Bible({super.key});

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
      body: Center(
        child: Text('Bible'),
      ),
    );
  }
}
