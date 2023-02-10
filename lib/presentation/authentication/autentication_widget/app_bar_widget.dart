


import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget with PreferredSizeWidget {
  static const _defaultHeight = 56.0;

  final double elevation;
  final Gradient gradient;
  final Widget title;
  final Widget leading;
  final double barHeight;

  GradientAppBar(
      {this.elevation = 0.0,
      this.gradient,
      this.title,
      this.barHeight = _defaultHeight, 
      this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      decoration: BoxDecoration(gradient: gradient, 
      ),
      child: AppBar(
        title: title,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [],
        leading: leading ,
        

      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(barHeight);
}