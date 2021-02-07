import 'package:pcm_app/class/Chemistryclass.dart';
import 'package:pcm_app/class/Physicsclass.dart';
import 'package:pcm_app/class/mathsbook.dart';

import 'package:pcm_app/global.dart';

Future<List<Chemistryclass>>getallchem() async{
  String url="659e562358f40bd84fe96f7effca4c7c/raw/42e6d9a5306e5e4f6d2ca07615d494abce4513a8/ChemistryAPI";
  List _list=new List();
  List<Chemistryclass> _Clist=new List();
  _list=await PostApi(url);
  print("hello list C:::::::::::"+_list.toString());
  for(var i in _list)
  {
    _Clist.add(Chemistryclass.fromJson(i)) ;
  }
  print("       CC    ++  CC++++"+_Clist.toString().length.toString());
  return _Clist;
}