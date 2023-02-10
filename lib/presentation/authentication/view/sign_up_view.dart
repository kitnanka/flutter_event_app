

import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/app_bar_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/bottom_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_glass_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_text_box.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/font_manager.dart';
import 'package:flutter_event_app/resources/routes_manager.dart';
import 'package:flutter_event_app/resources/string_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';
import 'package:flutter_event_app/constants/extensions.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/widgets/inawo_button.dart';
import 'package:gap/gap.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({ Key key }) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
   GlobalKey<FormState> _formKey = GlobalKey();
  bool forInawo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(

        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                 Colors.white.withOpacity(0.0),
                 Colors.blueAccent.withOpacity(0.1),
               ], stops: [
                 0.0,
                 1.0,
               ]),
               leading: IconButton(icon: Icon(Icons.arrow_back_sharp,), color: ColorManager.boldText, iconSize: AppSize.s22, onPressed: (){},),
      ),

      body: InawoGlassWidget(
      child: Padding(
        padding: EdgeInsets.all(AppMargin.m16),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Container(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children: [
                        Gap(AppSize.s15),
                        /* Text(AppString.signInText,
                                style: getBoldStyle(
                                    color: ColorManager.coralLight,
                                    fontSize: AppSize.s22)),*/

                        Text(AppString.signUp,
                            style: getBoldStyle(
                                color: ColorManager.boldText,
                                fontSize: AppSize.s24)),
                        Gap(AppSize.s21),
                                                InawoTextField(
                          // textEditingController: ,
                          prefixIcon: Image(
                            image: AssetImage(ImageAssets.profile),
                          ),

                          hintText: 'Full name',
                          hintStyle: getRegularStyle(
                            color: ColorManager.smallText,
                            fontSize: AppSize.s14,
                          ),

                         
                          validator: (val) => !val.isValidName
                              ? 'Enter valid first name'
                              : null,
                          inputType: TextInputType.emailAddress,
                        ),
                        Gap(AppSize.s19),
                        InawoTextField(
                          // textEditingController: ,
                          prefixIcon: Image(
                            image: AssetImage(ImageAssets.message),
                          ),

                          hintText: 'abc@email.com',
                          hintStyle: getRegularStyle(
                            color: ColorManager.smallText,
                            fontSize: AppSize.s14,
                          ),

                         
                          validator: (val) => !val.isValidName
                              ? 'Enter valid first name'
                              : null,
                          inputType: TextInputType.emailAddress,
                        ),
                        Gap(AppSize.s19),
                        InawoTextField(
                          //textEditingController: _passWord,
                          prefixIcon: Image(
                            image: AssetImage(ImageAssets.password),
                          ),

                          hintText: 'Your password',
                          hintStyle: getRegularStyle(
                            color: ColorManager.smallText,
                            fontSize: AppSize.s14,
                          ),
                          obscureText: true,
                          title: 'Password',
                          validator: (val) => val.length < 6
                              ? 'Password must be more than 6 characters'
                              : null,
                          inputType: TextInputType.visiblePassword,
                        ),
                        Gap(AppSize.s19),
                         InawoTextField(
                          //textEditingController: _passWord,
                          prefixIcon: Image(
                            image: AssetImage(ImageAssets.password),
                          ),

                          hintText: 'Confirm password',
                          hintStyle: getRegularStyle(
                            color: ColorManager.smallText,
                            fontSize: AppSize.s14,
                          ),
                          obscureText: true,
                          title: 'Password',
                        
                          inputType: TextInputType.visiblePassword,
                        ),
                     
                        Gap(AppSize.s36),
                        Center(
                          child: InawoButton(
                            label: AppString.signUp.toUpperCase(),
                          
                            onTap: () {
                              // Navigator.
                              //pushReplacementNamed(context, Routes.mainRoute);
                              /* if (_formKey.currentState.validate()) {
                                    loading();
                                    _auth
                                        .signInWithEmailAndPassword(
                                            _userName.text,
                                            _passWord.text,
                                            context)
                                        .whenComplete(() => _auth
                                                .authStateChange
                                                .listen((event) async {
                                              if (event == null) {
                                                loading();
                                                return;
                                              } else if (event != null) {
                                                Get.to(MainHomePage());
                                              }
                                            }));
                                  }

                                  print(_userName
                                      .text); // This are your best friend for debugging things
                                  //  not to mention the debugging tools
                                  print(_passWord.text);*/
                            },
                          ),
                        ),
                        Gap(AppSize.s40),
                        BottomWidget(
                          firstText: AppString.alreadyQuestion,
                          secondText: AppString.signInText,
                        )
                      ]))),
        ),
      ),
    )
    );
  }
}