
import 'package:flut_loginpage/builder/home/build.dart';

//import 'package:flut_loginpage/spotifymodel.dart/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flut_loginpage/spotifymodel.dart/Bottombar.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed),
        primarySwatch: Colors.grey,
      ),
      home:AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration:300,
        splash:Image.network('https://www.bing.com/th?id=OIP.euylJa-iIJgHwV2oIbLyxgHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',fit: BoxFit.cover,),
        nextScreen:Homeclass()
      
      ),
    );
  }

}
