import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black,Colors.white38])),
        

       //),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.favorite,
            //   size: 80,
            //   color: Colors.red,
            // ),
            //
            Image(
              image: AssetImage("assets/icon/myicon.png"),
              width: 100,
              height: 100,
            ),
            Text(
              "Hey World",
              style: GoogleFonts.dancingScript(
                fontSize: 30,
                color: Colors.black,
              ),
              // style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
      ),
    ),
    );
  }
}