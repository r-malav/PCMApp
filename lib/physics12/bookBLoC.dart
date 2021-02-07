import 'package:pcm_app/class/Physicstwelveclass.dart';

import 'package:pcm_app/global.dart';

Future<List<Physicstwelveclass>>getallphy12() async{
  String url="aa34f177aa2736bcc42624b92a166503/raw/d6ba0edbb48b1936e7a7a5d738a034b9d450077f/Physics12Api";
  List _list=new List();
  List<Physicstwelveclass> _plist=new List();
  _list=await PostApi(url);
  print("hello list p:::::::::::"+_list.toString());
  for(var i in _list)
  {
    _plist.add(Physicstwelveclass.fromJson(i)) ;
  }
  print("           ++  ++++"+_plist.toString().length.toString());
  return _plist;
}