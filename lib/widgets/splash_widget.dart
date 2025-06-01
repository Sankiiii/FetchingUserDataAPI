import 'package:flutter/material.dart';
import 'package:srch_prof/screens/home_screen.dart';
import 'package:srch_prof/screens/splash_screen.dart';

class SplashWithDelay extends StatefulWidget{
  @override
  // ignore: library_private_types_in_public_api
  _SplashWithDelayState createState() => _SplashWithDelayState();
}

class _SplashWithDelayState extends State<SplashWithDelay>{

@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}