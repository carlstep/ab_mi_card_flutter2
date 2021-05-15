import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/profile_picA.png'),
              ),
              Text(
                'I Am Morph',
                style: GoogleFonts.balooThambi(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w100,
                  letterSpacing: .3,
                  color: Colors.yellow[400],
                ),
              ),
              Text(
                'Flutter & Dart Newbie',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
