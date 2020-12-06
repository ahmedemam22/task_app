import 'package:flutter/material.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/size_config.dart';
class CenterDataShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
          width: SizeConfig.screenWidth,


          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/diving_center.jpg',height: SizeConfig.screenHeight/10,width: SizeConfig.screenWidth/4,),
              SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Rick's Reef Rick's Reef Rick's"),

                  SizedBox(height: 5,),

                 data_shape(),
                  data_shape(),
                  SizedBox(height: 5,),

                ],
              ),

            ],


          )
      ),
    );


  }
  data_shape(){
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,


      children: [
        text_shape(),
        SizedBox(width: SizeConfig.safeBlockHorizontal*4,),

        text_shape(),

      ],);
  }
text_shape(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text("Max Depth",style: TextStyle(
          color: gray
      ),),
      SizedBox(width: 8,),
      Text("25m",style: TextStyle(
          color: black
      )),
    ],
  );

}
}
