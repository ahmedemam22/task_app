import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/dialog.dart';
import 'package:taskapp/utils/my_padding.dart';
import 'package:taskapp/utils/size_config.dart';
import 'package:taskapp/utils/text_style.dart';
import 'package:taskapp/widget/center_shape.dart';


class LocationView extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
      return
        new Scaffold(
          backgroundColor: background_color,
          body:Consumer<SelectCenterProvider>(
            builder: (ctx, data, child) =>
              SlidingUpPanel(
              parallaxEnabled: true,
              maxHeight: SizeConfig.screenHeight*.80,
             // minHeight: SizeConfig.screenHeight/10,
              parallaxOffset: .5,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(18.0),
                topRight: const Radius.circular(18.0),
              ),       panelBuilder: (sc) =>
                data.items.name==null?Padding(
                  padding: PADDING_symmetric(verticalFactor: 2),
                  child: Text("No Result",textAlign: TextAlign.center,style: TX_STYLE_black_14Point5,),
                ):
                ListView(
                    controller: sc,

                    children: [


                CenterShape()

            ]),

              body: Center(
                child: IconButton(icon: Icon(Icons.location_on,size: 50,color: red),onPressed:() =>
                FN_showDetails_Dialog_qrcode(context)
                ,),
              ),
            ),
          ),

        );

    }
  }












