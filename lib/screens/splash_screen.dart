import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100,),
            SizedBox(height: 20,),
            Text("Welcom to Profilo" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            CircularProgressIndicator()
          ],
        ),
      ),
   );
  }

}