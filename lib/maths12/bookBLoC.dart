import 'package:pcm_app/class/mathstwelveclass.dart';
import 'package:pcm_app/global.dart';

Future<List<mathstwelveclass>>getbookdetailsmt() async{
  String url="5e76051dd06de660584c75be59cf91ee/raw/d40e7de2acda1a0f5e71f7a647895837939970e4/maths12API";
  List _list=new List();
  List<mathstwelveclass> _uselist=new List();
  _list=await PostApi(url);
  print(_list);
  for(var i in _list)
  {
    _uselist.add(mathstwelveclass.fromJson(i)) ;
  }
  return _uselist;
}