

import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:gap/gap.dart';

class InawoButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;


  const InawoButton({Key key, this.onTap, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s58,
      width: 271,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: ColorManager.buttonBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s15)),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 0.0,width: 0.0,),
              Text(
                label,
                textScaleFactor: 1.0,
                style: TextStyle(
                    color: ColorManager.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),

             

              CircleAvatar(
                radius: AppSize.s15,
                backgroundColor: Colors.white.withOpacity(0.1),
                child: Icon(Icons.arrow_forward, color: ColorManager.white, size: AppSize.s20,),

              )
            ],
          )),
    );
  }
}