import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/my_padding.dart';
import 'package:taskapp/utils/size_config.dart';
import 'package:taskapp/widget/button_shape.dart';
import 'package:taskapp/widget/dive_shape.dart';

import 'center_data_shape.dart';
class CenterShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                ButtonShape(title:"Save For Later",color: white,),
                SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                Expanded(
                    flex: 1,
                    child:ButtonShape(title:"Find Center"),
                ),
              ],
            ),
            SizedBox(height: 5,),

            Dismissible(
                key: ValueKey("data"),
                onDismissed: (direction){
                  Provider.of<SelectCenterProvider>(context,listen: false).remove_center();

                },
                background: Container(color: Colors.red,
                  child:  Icon(Icons.delete,color: Colors.white,),),
                direction:DismissDirection.endToStart,


                child: CenterDataShape()),


            Column(
              children:List.generate(Provider.of<SelectCenterProvider>(context,listen: false).items.centers.length, (index) => DiveShape(index))
              ,

            )



          ],
        ),
      ),
    );






  }



}
