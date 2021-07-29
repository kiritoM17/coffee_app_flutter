import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenView extends StatefulWidget {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
              () => Navigator.pushReplacementNamed(context,'/init_screen'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_app.png'),
                fit: BoxFit.fill
                ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Image.asset('assets/images/logo_app.png'),
                  ),
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}