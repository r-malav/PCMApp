import 'package:pcm_app/class/Chemistryclass.dart';
import 'package:pcm_app/class/Chemistrytwelveclass.dart';
import 'package:pcm_app/global.dart';

Future<List<Chemistrytwelveclass>>getallchem12() async{
  String url="25a0626c2567c2f1b1c981f6cc6caf32/raw/0a6b2ac780adaa8c77edeb649bd78b618c9c167b/Chemistry12API";
  List _list=new List();
  List<Chemistrytwelveclass> _Clist=new List();
  _list=await PostApi(url);
  print("hello list C:::::::::::"+_list.toString());
  for(var i in _list)
  {
    _Clist.add(Chemistrytwelveclass.fromJson(i)) ;
  }
  print("       CC    ++  CC++++"+_Clist.toString().length.toString());
  return _Clist;
}