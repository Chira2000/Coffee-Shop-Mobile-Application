import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 40),
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/homepage.png'),
                fit: BoxFit.cover,
              )),
          child: Text(
            "Macchiato",
            style: TextStyle(fontSize: 20, color: Colors.amber),
          )),
    );
  }
}
