import 'package:flutter/material.dart';
import 'package:pcm_app/maths/video.dart';
import 'Notes.dart';
import 'package:pcm_app/maths/book.dart';

class Mhome extends StatefulWidget {
  @override
  _MhomeState createState() => _MhomeState();
}

class _MhomeState extends State<Mhome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(() {
      if (_tabController.index == 0) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Class-11 Maths'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Color(0xff112B70),
          tabs: <Widget>[
            Tab(text: "Book"),
            Tab(
              text: "Notes",
            ),
            Tab(text: "videos"),
          ],
          labelColor: Color(0xff112B70),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          book(),
          notes(),
          video(),
        ],
      ),
    );
  }
}
