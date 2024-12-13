import 'package:flutter/material.dart';

import 'splash_screen.dart';

class FirstPage extends StatefulWidget {
  static String routeName = "/first_page";
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
   void initState() {
    super.initState();
    _navigateToSplashScreen();
    
  }

  _navigateToSplashScreen() async {
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>  SplashScreen()) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Text('Splash Screen'),
      ),
    ));
  }
}
