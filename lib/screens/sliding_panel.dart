import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taskapp/utils/bottom_sheet.dart';
import 'package:taskapp/utils/size_config.dart';
class Sliding extends StatefulWidget {
  @override
  _SlidingState createState() => _SlidingState();
}

class _SlidingState extends State<Sliding> {
  final double _initFabHeight = 120.0;

  double _fabHeight;

  double _panelHeightOpen;

  double _panelHeightClosed = 95.0;

  @override
  void initState(){
    super.initState();

    _fabHeight = _initFabHeight;
  }

  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body:




    Material(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[

            SlidingUpPanel(
              maxHeight: _panelHeightOpen,
              minHeight: _panelHeightClosed,
              parallaxEnabled: true,
              parallaxOffset: 5,
              body: Text("ssssssss"),
              panelBuilder: (sc) => _panel(sc),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
              onPanelSlide: (double pos) => setState((){
                _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
              }),
            ),

            // the fab
            Positioned(
              right: 20.0,
              bottom: _fabHeight,
              child: FloatingActionButton(
                child: Icon(
                  Icons.gps_fixed,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: (){},
                backgroundColor: Colors.white,
              ),
            ),

            Positioned(
                top: 0,
                child: ClipRRect(
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).padding.top,
                          color: Colors.transparent,
                        )
                    )
                )
            ),

            //the SlidingUpPanel Title
            Positioned(
              top: 52.0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
                child: Text(
                  "SlidingUpPanel Example",
                  style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0),
                  boxShadow: [BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .25),
                      blurRadius: 16.0
                  )],
                ),
              ),
            ),


          ],
        ),
      ));
    }

    Widget _panel(ScrollController sc){
      return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
              controller: sc,
          

            itemCount: 5,
            itemBuilder: (context, i)=>
           bottom_sheet_shape(context)
      ));
    }

    Widget _button(String label, IconData icon, Color color){
      return Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8.0,
                )]
            ),
          ),

          SizedBox(height: 12.0,),

          Text(label),
        ],

      );
    }}