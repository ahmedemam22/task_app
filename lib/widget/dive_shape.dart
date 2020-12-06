import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/my_padding.dart';
class DiveShape extends StatelessWidget {
  final int index;
  DiveShape(this.index);
  @override
  Widget build(BuildContext context) {
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
}
