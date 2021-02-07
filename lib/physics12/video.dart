import 'package:flutter/material.dart';

class video extends StatefulWidget {
  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {
  _home() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return block(index);
          }),
    );
  }

  block(int index) {
    return GestureDetector(
   onTap:() {
      showAlertDialog(context, index);
    } ,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [_image(index), _txt(index)],
            ),
          )),
    );
  }

  _image(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.width * 0.4,
        minHeight: MediaQuery.of(context).size.width * 0.4,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          'Assets/home.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _txt(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Maths live class ',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f4fd),
      body: _home(),
    );
  }
  showAlertDialog(BuildContext context, index) {
    // Create button
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Chapter ${index + 1}: "),
      content: Text("Comming soon."),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
