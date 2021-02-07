import 'package:flutter/material.dart';
import 'package:pcm_app/class/Physicstwelveclass.dart';

import 'package:pcm_app/physics12/bookBLoC.dart';

import 'package:pcm_app/physics12/mypdf.dart';

class book extends StatefulWidget {
  @override
  _bookState createState() => _bookState();
}

class _bookState extends State<book> {
  List<Physicstwelveclass> _list = new List();

  _loadlist() async {
    _list = await getallphy12();
    print(" hello ritesh   \n" + _list.length.toString());
  }

  loadbody() {
    return FutureBuilder(
      future: _loadlist(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return bodyhome();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loadbody());
  }

  bodyhome() {
    return Container(
      height: 1000,
      child: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => mypdf(index,_list[index].chapter.toString(),
                        _list[index].chapterUrl.toString())),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                  Text(
                    "Chapter ${index + 1}: " + _list[index].chapter.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFF0e6959),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
