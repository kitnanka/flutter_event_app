





import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_glass_widget.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';

class SignIn extends StatefulWidget {
   SignIn ({ Key key }) : super(key: key);

  @override
  State<SignIn> createState() => _State();
}

class _State extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: InawoGlassWidget(
        
      ),
    );
  }
}