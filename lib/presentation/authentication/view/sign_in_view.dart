import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/bottom_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_glass_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_text_box.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/font_manager.dart';
import 'package:flutter_event_app/resources/routes_manager.dart';
import 'package:flutter_event_app/resources/string_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/constants/extensions.dart';
import 'package:flutter_event_app/widgets/inawo_button.dart';
import 'package:flutter_event_app/widgets/inawo_button_two.dart';
import 'package:gap/gap.dart';

class SignInView extends StatefulWidget {
  SignInView({Key key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  GlobalKey<FormState> _formKey = GlobalKey();
  bool forInawo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /* Text(AppString.signInText,
                                style: getBoldStyle(
                                    color: ColorManager.coralLight,
                                    fontSize: AppSize.s22)),*/

                        Text(AppString.signInText,
                            style: getBoldStyle(
                                color: ColorManager.boldText,
                                fontSize: AppSize.s24)),
                        Gap(AppSize.s21),
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

                          title: 'Username',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Switch.adaptive(
                              activeColor: ColorManager.bluePrimary,
                              activeTrackColor: ColorManager.bluePrimary,
                              splashRadius: AppSize.s10,
                              value: forInawo,
                              onChanged: (value) =>
                                  setState(() => forInawo = value),
                            ),
                            Text(
                              AppString.remember,
                              style: TextStyle(
                                  fontSize: AppSize.s14,
                                  color: ColorManager.boldText,
                                  fontWeight: FontWeightManager.regular),
                            ),
                            SizedBox(
                              width: AppSize.s40,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.forgetPasswordRoute);
                              },
                              child: Text(
                                AppString.forgotPassword,
                                style: TextStyle(
                                    fontSize: AppSize.s14,
                                    color: ColorManager.boldText,
                                    fontWeight: FontWeightManager.regular),
                              ),
                            )
                          ],
                        ),
                        Gap(AppSize.s36),
                        Center(
                        
                          child: InawoButton(
                            label: AppString.loginButtonText,
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
                          firstText: AppString.accountQuestion,
                          secondText: AppString.signUp,
                        )
                      ]))),
        ),
      ),
    ));
  }
}
