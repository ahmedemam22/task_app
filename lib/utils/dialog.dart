import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/model/center_model.dart';
import 'package:taskapp/providers/select_center_provider.dart';
import 'package:taskapp/utils/bottom_sheet.dart';
import 'package:taskapp/utils/color.dart';
import 'package:taskapp/utils/my_padding.dart';
import 'package:taskapp/utils/size_config.dart';
import 'package:taskapp/utils/text_style.dart';
import 'package:taskapp/widget/details.dart';

 FN_showDetails_Dialog_qrcode(BuildContext context) async {
  final provider= Provider.of<SelectCenterProvider>(context,listen: false);
 //List<String> center_items=provider.items.centers;
  return (await showAnimatedDialog(
      animationType: DialogTransitionType.size,
      barrierDismissible:true,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),

      context: context,
      builder: (context) =>  Details()


          ));}
