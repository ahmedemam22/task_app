import 'package:flutter/cupertino.dart';
import 'package:taskapp/model/center_model.dart';
import 'package:taskapp/model/user_response.dart';
import 'package:taskapp/network/api.dart';
import 'package:taskapp/network/constant.dart';

class SelectCenterProvider extends ChangeNotifier{
  UserResponse user;
CenterModel _items=CenterModel(name: 'assets/images/diving_center.jpg',
    max_depth: "25m",site_type: "Wreck",dive_entry: "Shore Dive",visibility: "15m",centers: []);
CenterModel get items=>_items;
add_center(){
  _items.centers.add("Dive A${_items.centers.length+1}");
  notifyListeners();
}
remove_center(int index){
  _items.centers.removeAt(index);
  notifyListeners();
}
Future get_user(String id)async{
  try{var response=await api.get(BASE_URL+USER+id);
  user= UserResponse.fromJson(response);}
  catch(e){
    print("Error::${e}");
  }
  finally{
    notifyListeners();
  }

}
}