
import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';

class InawoTextButton extends StatelessWidget {
 final  VoidCallback ontap;
  final String label;
  final double width;
  final Color color;
  const InawoTextButton({ Key key, this.label, this.width, this.ontap, this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: ontap, 
      child: Text(label, style: getMediumStyle(color: color, fontSize: AppSize.s18),));
  }
}