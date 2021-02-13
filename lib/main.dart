import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Customize the system color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF282C40),
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    // Material App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF282C40),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(
                    'assets/helloaditya.png',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Aditya Rohman',
                  style: GoogleFonts.pacifico(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer'.toUpperCase(),
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 20.0,
                    color: Colors.white.withAlpha(200),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 32.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFF282C40),
                    ),
                    title: Text(
                      '+62 823 595 25949',
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xFF282C40),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 32.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Color(0xFF282C40),
                    ),
                    title: Text(
                      'hello.adityarohman@gmail.com',
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xFF282C40),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
