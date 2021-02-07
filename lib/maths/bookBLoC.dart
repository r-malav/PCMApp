import 'package:pcm_app/class/mathsbook.dart';

import 'package:pcm_app/global.dart';

Future<List<mathsbook>>getbookdetails() async{
  String url="4d70b265707997f7a36fd11f8edfd1cc/raw/3491b8fcc608bd5a93aa214d473f61bf0ea4dfa5/mathsapi";
  List _list=new List();
  List<mathsbook> _uselist=new List();
  _list=await PostApi(url);
  print(_list);
  for(var i in _list)
  {
    _uselist.add(mathsbook.fromJson(i)) ;
  }
  return _uselist;
}