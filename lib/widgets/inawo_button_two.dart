import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:gap/gap.dart';

class InawoButtonTwo extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double width;
  final String image;

  const InawoButtonTwo(
      {Key key,
      this.width,
      this.onTap,
      this.label,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s51,
      width: 273,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: ColorManager.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
         
              children: [
                Container(
                   height: AppSize.s30,
                   width: AppSize.s30,
                  child: Image(image: AssetImage(image,))),
                Gap(AppSize.s20),
                Text(
                  label,
                  textScaleFactor: 1.0,
                  style: TextStyle(
                      color: ColorManager.boldText,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ],
            ),
          )),
    );
  }
}
