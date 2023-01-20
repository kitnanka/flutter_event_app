

import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:gap/gap.dart';

class InawoButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double width;

  const InawoButton({Key key,this.width = double.infinity, this.onTap, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s45,
      width: width,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: ColorManager.buttonBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s15)),
              )),
          child: Row(
            children: [
              Text(
                label,
                textScaleFactor: 1.0,
                style: TextStyle(
                    color: ColorManager.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),

              Gap(AppSize.s25),

              CircleAvatar(
                radius: AppSize.s10,
                backgroundColor: Colors.transparent,
                child: Icon(Icons.arrow_forward, color: ColorManager.white,),

              )
            ],
          )),
    );
  }
}