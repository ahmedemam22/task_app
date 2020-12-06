import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/my_padding.dart';
import 'package:taskapp/utils/size_config.dart';
import 'package:taskapp/utils/text_style.dart';

import 'color.dart';

bottom_sheet_shape(BuildContext context) {

      return Container(

        decoration: new BoxDecoration(
          color: white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
        ),

        child:Padding(
          padding: PADDING_symmetric(verticalFactor: 1,horizontalFactor: 6),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  container_shape(),
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 1,
                      child: container_shape()),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  details(),
                ],
              ),
              Column(
                children:List.generate(Provider.of<SelectCenterProvider>(context,listen: false).items.centers.length, (index) => gray_container(index,context))
                  ,

              )



            ],
          ),
        ),
      );






}
Widget container_shape(){
  return  Container(
    width: 130,
    height: 40,
    decoration: BoxDecoration(
      color: button_color,
      borderRadius: BorderRadius.all(Radius.circular(5),

      ),
     /* border: Border.all(
        color: red,
      ),*/

    ),
    child: Center(child: Text('Find Center',style: TextStyle(fontSize: 14,color: white),)),
  );

}
Widget  details(){
return  Card(
   child: Container(
       width: SizeConfig.screenWidth,


    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/images/diving_center.jpg',height: 80,width: 100,),
        SizedBox(width: 5,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

              Text("Rick's Reef Rick's Reef Rick's"),

                  SizedBox(height: 5,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                    text_shape(),
                    SizedBox(width: 20,),

                    text_shape(),

                  ],),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      text_shape(),
                      SizedBox(width: 20,),

                      text_shape(),

                    ],),
                ],
              ),

          ],


    )
  ),
);

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
Widget gray_container(index,context){
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
          GestureDetector(
            onTap: ()=>Provider.of<SelectCenterProvider>(context,listen: false).remove_center_item(index),
            child: Container(
              color: white,
              height: 20,
              width: 20,
              child: Center(child:  Icon(Icons.close,size: 20,),),
            ),
          )


        ],
      ),

    ),
  );
}
air_mix(){
  return Container(
    width: 100,
    color: white,
    child: Padding(
      padding: PADDING_symmetric(horizontalFactor: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Air Mix"),
          Icon(Icons.arrow_forward_ios,color: gray,size: 20,)
        ],
      ),
    ),

  );
}