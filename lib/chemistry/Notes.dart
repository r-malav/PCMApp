import 'package:flutter/material.dart';

class notes extends StatefulWidget {
  @override
  _notesState createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
             showAlertDialog(context, index);
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
                      "Chapter ${index+1}: Chemistry",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xFF0e6959),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
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
