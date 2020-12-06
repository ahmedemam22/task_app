import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/bottom_sheet.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/my_padding.dart';
import 'package:taskapp/utils/size_config.dart';
import 'package:taskapp/utils/text_style.dart';
class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<SelectCenterProvider>(context,listen: false);
    List<String> center_items=provider.items.centers;
    return Padding(
      padding:PADDING_symmetric(horizontalFactor: 1),
      child: Container(
        height: SizeConfig.blockSizeHorizontal*35,
        width: SizeConfig.screenWidth,


        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              decoration: BoxDecoration(
color: white,
                  borderRadius: BorderRadius.only(topRight:Radius.circular(5))
              ),

              child: details()
            ),

            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.blockSizeVertical*4,
                decoration: BoxDecoration(
                    color: center_items.length<3?gray:button_color,

                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(5),bottomRight:Radius.circular(5))
                ),

              child: GestureDetector(
                onTap: (){
                  if(center_items.length<3){provider.add_center();}
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text( center_items.length<3?"ADD SITE TO LIST":"MAXIMUM VISTS PER TRIP ",style: TX_STYLE_black_14.copyWith(decoration: TextDecoration.none,),
                    textAlign: TextAlign.center,
            ),
                ),
              ))
          ],
        ),
      ),
    );



  }
  text_shape(){
    return Row(
      children: [
        Text("Max Depth",style: TX_STYLE_black_14.copyWith(decoration: TextDecoration.none),),
        SizedBox(width: 8,),
        Text("25m",style: TX_STYLE_black_14.copyWith(decoration: TextDecoration.none)),
      ],
    );

  }
  /*Widget gray_container(index){
    return Padding(
      padding: PADDING_symmetric(verticalFactor: 1),
      child: Container(
        height: 40,
        color: gray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Dive A${index+1}'),

            air_mix(),
            air_mix(),
            Container(
              color: white,
              height: 20,
              width: 20,
              child: Center(child:  Icon(Icons.close,size: 20,),),
            )


          ],
        ),

      ),
    );
  }*/}