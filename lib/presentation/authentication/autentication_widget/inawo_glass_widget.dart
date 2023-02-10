import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/values_manager.dart';

class InawoGlassWidget extends StatelessWidget {

    final Widget child;
  const InawoGlassWidget({ Key key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     child: Stack(
       children: [
         BackdropFilter(
           filter: ImageFilter.blur(
             sigmaX: AppSize.s2,
             sigmaY: AppSize.s2,
           ),
           child: Container(width: 0.0, height: 0.0,),
         ),
         
         Container(
           decoration: BoxDecoration(
              // boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 30, offset: Offset(2, 2))],
               //borderRadius: BorderRadius.circular(20.0),
               //border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
               gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                 Colors.white.withOpacity(0.1),
                 Colors.blueAccent.withOpacity(0.3),
               ], stops: [
                 0.0,
                 1.0,
               ])),
           child: child,
         ),
       ],
     ),
   );
  }
}