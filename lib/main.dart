import 'package:flutter/material.dart';

import 'dart:async';

import 'PCMhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.redAccent, accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) => PCMhome(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
          colors: [Colors.green, Colors.blue]
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'Assets/pmc.jpg',
                        width: 500,
                        height: 300,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topLeft,
                      ),

                      Text(
                        "Physics chemistry Maths Created By Ritesh",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFFCEEEE4),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
