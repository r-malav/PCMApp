import 'package:pcm_app/class/Physicsclass.dart';
import 'package:pcm_app/class/mathsbook.dart';

import 'package:pcm_app/global.dart';

Future<List<Physicsclass>>getallphy() async{
  String url="4328b73cb74ef4b45deeaa08a905de27/raw/501032d6504ce6b6ab7f45fcd67dfd3ea5ff7a00/PhysicsApi";
  List _list=new List();
  List<Physicsclass> _plist=new List();
  _list=await PostApi(url);
  print("hello list p:::::::::::"+_list.toString());
  for(var i in _list)
  {
    _plist.add(Physicsclass.fromJson(i)) ;
  }
  print("           ++  ++++"+_plist.toString().length.toString());
  return _plist;
}