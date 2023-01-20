import 'package:flutter/material.dart';
import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "saket";
    bring_vegetable(basket: true, rupees: 50);
    num temperature = 43;
    var day = "tuesday";
    const pi = 3.14;
    // values in const cant be changed
    //in case of var , it can take any value but it is assigned my the compiler
    // num can take both kind int or double
    return MaterialApp(
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/",
      routes: {
        // slash wala front main dikhata hai
        "/": (context) => login_page(),
        "/Login": (context) => HomePage()
        // login_page class ka naam hai
      },
    );
  }

  // agar maine argument pass nahi kiya hai tab woh 100 lega,nahi toh woh
  // given argument ko lega aur 100 ignore kardega
  // required make it compulsory to give it as argument
  // agar hum class ke andhar kuch bhi banate hai toh usse meathod bolte hai
  // aur class ke bahar wale ko function
  bring_vegetable({required bool basket, int rupees = 100}) {}
}
