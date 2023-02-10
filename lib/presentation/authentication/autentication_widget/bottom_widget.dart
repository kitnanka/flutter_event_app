import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/font_manager.dart';
import 'package:flutter_event_app/resources/string_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/widgets/inawo_button.dart';
import 'package:flutter_event_app/widgets/inawo_button_two.dart';
import 'package:gap/gap.dart';

class BottomWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const BottomWidget({Key key, this.firstText, this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.orText,
              style: TextStyle(
                  fontSize: AppSize.s16,
                  color: ColorManager.textColor,
                  fontWeight: FontWeightManager.medium),
            ),
            Gap(AppSize.s10),
            InawoButtonTwo(
              onTap: () {},
              image: ImageAssets.google,
              label: AppString.loginGoogle,
              width: MediaQuery.of(context).size.width,
            ),
            Gap(AppSize.s20),
            InawoButtonTwo(
              onTap: () {},
              image: ImageAssets.facebook,
              label: AppString.loginFacebook,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
        Gap(40),
        GestureDetector(
            onTap: () {
              // Get.to(RegisterView());
            },
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: firstText,
                    style: TextStyle(
                        fontSize: AppSize.s15,
                        color: ColorManager.boldText,
                        fontWeight: FontWeightManager.regular),
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: AppSize.s1)),
                      TextSpan(
                        text: secondText,
                        style: TextStyle(
                            fontSize: AppSize.s15,
                            color: ColorManager.bluePrimary,
                            fontWeight: FontWeightManager.regular),
                      )
                    ]),
              ),
            )),
      ],
    );
  }
}
