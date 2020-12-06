import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:taskapp/widget/details.dart';

 FN_showDetails_Dialog_qrcode(BuildContext context) async {
  return (await showAnimatedDialog(
      animationType: DialogTransitionType.size,
      barrierDismissible:true,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),

      context: context,
      builder: (context) =>  Details()


          ));}
