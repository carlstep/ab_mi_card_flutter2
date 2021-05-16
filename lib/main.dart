import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'carlstep333@me.com',
    queryParameters: {'subject': 'Personal_mail!'});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
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
                  letterSpacing: .3,
                  color: Colors.yellow[400],
                ),
              ),
              Text(
                'FLUTTER & DART',
                style: GoogleFonts.dosis(
                  fontSize: 24.0,
                  letterSpacing: .1,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.yellow,
                  //height: 2.0,
                ),
              ),
              Card(
                color: Colors.blueGrey[500],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.yellow[600],
                  ),
                  title: Text(
                    '+352 66 777 9999',
                    style: GoogleFonts.oxygen(
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                      color: Colors.yellow[600],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blueGrey[500],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.yellow[600],
                  ),
                  title: GestureDetector(
                    onTap: () => launch(_emailLaunchUri.toString()),
                    child: Text(
                      'cal333@incode.com',
                      style: GoogleFonts.oxygen(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.yellow[600],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
