import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/onboarding/model/onboarding_view_model.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/widgets/inawo_text_button.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({ Key key, this.model }) : super(key: key);

  final OnboardingViewModel model;

 
  final int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    
    return Stack(
        alignment: AlignmentDirectional.center,

        children: [
          Positioned(
            top: 85.0,
            child: Image(image: AssetImage(model.onboardingImage),
            ),
          ),

          Positioned(
            bottom: 0.0,
            top: MediaQuery.of(context).size.height*0.6,
            right: 0.0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ColorManager.blueSecondary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(48), topRight: Radius.circular(48) ),
                
                
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: AppSize.s40, right: AppSize.s40, top: AppSize.s40),
                child: 
                Column(
                  children: [
                    Text(model.headerText,style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.center, textScaleFactor: 1.1,),
                    Gap(AppSize.s20),
                    Text(model.subTitle, style: Theme.of(context).textTheme.subtitle2, textAlign: TextAlign.center,),


              Gap(AppSize.s45),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InawoTextButton(
                    label: 'Skip',
                    ontap: (){},
                    color: Colors.white54,
                  ),

                  AnimatedSmoothIndicator(
                    activeIndex: currentPage , 
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: ColorManager.white,
                      dotColor: Colors.white54,
                      dotHeight: AppSize.s7,
                      dotWidth: AppSize.s7
                      


                    ),
                    
                    ),

                    InawoTextButton(
                    label: 'Next',
                    ontap: (){},
                    color: ColorManager.white,
                  )

                ],
              )
                  ],
                ),
              )

            ),
          )
        ],

      );
  }
}