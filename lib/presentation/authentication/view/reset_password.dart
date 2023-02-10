
import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/app_bar_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_glass_widget.dart';
import 'package:flutter_event_app/presentation/authentication/autentication_widget/inawo_text_box.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/string_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/widgets/inawo_button.dart';
import 'package:flutter_event_app/constants/extensions.dart';
import 'package:gap/gap.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({ Key key }) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
               leading: IconButton(icon: Icon(Icons.arrow_back_sharp), color: ColorManager.boldText, iconSize: AppSize.s22, onPressed: (){},),
      ),
      

      body: InawoGlassWidget(
        child: Padding(
          padding: const EdgeInsets.only(left:AppSize.s28, right:AppSize.s30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Gap(AppSize.s25),
               Text(AppString.reset,
                              style: getBoldStyle(
                                  color: ColorManager.boldText,
                                  fontSize: AppSize.s24)),
                                  Gap(AppSize.s12),


               Text(AppString.resetText,
                              style: getRegularStyle(
                                  color: ColorManager.boldText,
                                  fontSize: AppSize.s15)),


               Gap(AppSize.s25),

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
                        ),            Gap(AppSize.s40),
                          Padding(
                            padding: const EdgeInsets.only(left:AppSize.s52, right: AppSize.s52),
                            child: InawoButton(
                              onTap: (){},
                              label: 'SEND',
                             
                            ),
                          )
            ],
          ),
        ),
      ),
    );
  }
}