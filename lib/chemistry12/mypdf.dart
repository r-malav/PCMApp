import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
String count;
String chap;
String url;

class mypdf extends StatefulWidget {
  mypdf(String _count,String _chap, String _url) {
    count=_count;
    chap = _chap;
    url = _url;
  }
  @override
  _mypdfState createState() => _mypdfState();
}

class _mypdfState extends State<mypdf> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(url);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("chapter ${count}:"+chap.toString()),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(
                  document: document,
                  indicatorBackground: Colors.cyan,
                )),
    );
  }
}
