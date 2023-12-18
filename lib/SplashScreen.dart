import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RegisterPage.dart';

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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 20, 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Macchiato",
                      style: GoogleFonts.acme(
                        fontSize: 50,
                        color: Color.fromARGB(255, 241, 239, 237),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                      child: Column(
                        children: [
                          Text(
                            "Get a Headstart for Your Day....",
                            style: GoogleFonts.lato(
                                fontSize: 20,
                                color:
                                    const Color.fromARGB(255, 241, 239, 237)),
                          ),
                          SizedBox(height: 40, width: 20),
                          Material(
                            color: Color.fromARGB(255, 168, 97, 5),
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text(
                                  "Get Started",
                                  style: GoogleFonts.lato(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
