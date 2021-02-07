import 'package:flutter/material.dart';
import 'package:pcm_app/physics/phome.dart';
import 'package:pcm_app/physics12/phome.dart';
import 'package:pcm_app/chemistry/chome.dart';
import 'package:pcm_app/chemistry12/chome.dart';
import 'package:pcm_app/maths/mhome.dart';
import 'package:pcm_app/maths12/mhome.dart';

class PCMhome extends StatefulWidget {
  @override
  _PCMhomeState createState() => _PCMhomeState();
}

class _PCMhomeState extends State<PCMhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      ClipPath(
          clipper: Myclipper(),
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 40, right: 1),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.blue]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "Assets/appstore.png",
                      width: 190,
                      height: 190,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topLeft,
                    ),
                    Positioned(
                        height: 190,
                        left: 190,
                        top: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Physics",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chemistry",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Maths",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )),
                    Container(),
                  ]),
                ),
              ],
            ),
          )),
      Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            subject('Class-11 : Physics', Phome()),
            subject('Class-11 : Chemistry', chome()),
            subject('Class-11 : Maths', Mhome()),
            subject('Class-12 :Physics', PThome()),
            subject('Class-12 :Chemistry', CThome()),
            subject('Class-12 :Maths', MThome()),
          ],
        ),
      ),
    ]));
  }

  subject(String sub, Widget st) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => st),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFF06292e),
          ),
        ),
        child: Row(
          children: <Widget>[
            Image.asset("Assets/books.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                sub.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF0e6959),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/* GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => chome()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Color(0xFF06292e),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset("Assets/books.png"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Chemistry",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF0e6959),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Mhome()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Color(0xFF06292e),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset("Assets/books.png"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Maths",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF0e6959),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
