import 'package:flutter/material.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/size_config.dart';
class ButtonShape extends StatelessWidget {
  final String title;
  final Color color;
  ButtonShape({this.title,this.color,});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: SizeConfig.screenWidth/3.5,
      height: SizeConfig.blockSizeVertical*5,

      decoration: BoxDecoration(
        color: color==null?button_color:white,


        borderRadius: BorderRadius.all(Radius.circular(5),


        ),
         border: Border.all(
        color: button_color,
      ),

      ),
      child: Center(child: Text(title,style: TextStyle(fontSize: 14,color:color==null? white:button_color),)),
    );
  }
}
