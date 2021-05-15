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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/profile_picA.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Cal Stephens',
                style: GoogleFonts.caveat(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w100,
                  letterSpacing: .3,
                  color: Colors.yellow[400],
                ),
              ),
              Text(
                'FLUTTER & DART DEVELOPER',
                style: GoogleFonts.balooTammudu(
                  //fontFamily: 'Lobster',
                  fontSize: 24.0,
                  //fontWeight: FontWeight.w100,
                  letterSpacing: .1,
                  color: Colors.grey[800],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[100],
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[100],
                ),
                //color: Colors.yellowAccent[100],
                //width: 250.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone_iphone,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+324 666 9999 21',
                      style: GoogleFonts.balooTammudu(
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.teal[800],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[100],
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[100],
                ),
                //color: Colors.yellowAccent[100],
                //width: 250.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.email_outlined,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'cal333@incode.com',
                      style: GoogleFonts.balooTammudu(
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.teal[800],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
