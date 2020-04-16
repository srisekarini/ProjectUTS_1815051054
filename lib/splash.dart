import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Color(0xfff1592a),
    //   statusBarBrightness: Brightness.dark
    // ));
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Container(
          // width: 200, height: 200, child: Image.asset("assets/splash.jpg",)
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"), fit: BoxFit.fill)),
          child: Center(
           
            //padding: EdgeInsets.only(top: 50),
            child: MaterialButton(
              height: 40,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login'); //ini contoh penggunaan route pindah halaman
              },
              
              minWidth: 200,
              color: Colors.blue,
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
