import 'package:Tulanadotcom/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/ProductListingScreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tulana',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
       // textTheme: GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme),
       // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
     // home: ProductListingScreen(),
    );
  }
}