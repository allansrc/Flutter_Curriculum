import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/profile_pic.jpeg'),
                radius: 50.0,
//                backgroundColor: Colors.red,
              ),
              Text(
                'Allan Ramos',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 38.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: GoogleFonts.sourceSans3(
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 80,
                child: Divider(
                  color: Colors.green.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  title: Text('+55 83 99403-7960',
                      style: GoogleFonts.sourceSans3(
                          textStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green.shade900,
                      ))),
                ),
              ),
              Card(
//                padding: EdgeInsets.all(10),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.green),
                  title: Text(
                    'allanramos.teixeira@gmail.com',
                    style: GoogleFonts.sourceSans3(
                        textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.green.shade900,
                    )),
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
