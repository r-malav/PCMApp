import 'package:flutter/material.dart';
import 'package:pcm_app/class/mathsbook.dart';
import 'package:pcm_app/global.dart';

import 'bookBLoC.dart';
import 'package:pcm_app/maths/mypdf.dart';

class book extends StatefulWidget {
  @override
  _bookState createState() => _bookState();
}

class _bookState extends State<book> {
  List<mathsbook> _list=new List();


  loadbody() {
    return FutureBuilder(
      future: _loadlist(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.connectionState==ConnectionState.done){
          return bodyhome();
        }else{
          return Center(
            child:  LinearProgressIndicator(),
          );
        }
      } ,
    );

  }

  _loadlist() async {
    _list=await getbookdetails();
    print(" hello ritesh   "+_list.toString());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: loadbody());
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
                MaterialPageRoute(builder: (context) => mypdf(index,_list[index].chapter.toString(),_list[index].chapterUrl.toString())),
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
                    "Chapter ${index+1}: "+_list[index].chapter.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
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
