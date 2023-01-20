import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_event_app/presentation/onboarding/model/onboarding_view_model.dart';
import 'package:flutter_event_app/presentation/onboarding/view/onboarding_page_widget.dart';
import 'package:flutter_event_app/resources/assets_manager.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/string_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:flutter_event_app/widgets/inawo_text_button.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController pageController = PageController();
  int currentPage = 0;
  List<Widget> _pages = <Widget>[
    OnboardingPageWidget(
      model: OnboardingViewModel(
          onboardingImage: ImageAssets.onBoardingLogo1,
          headerText: AppString.onBoardingTitile1,
          subTitle: AppString.onboardingSubTitile1),
    ),
    OnboardingPageWidget(
      model: OnboardingViewModel(
          onboardingImage: ImageAssets.onBoardingLogo2,
          headerText: AppString.onBoardingTitile2,
          subTitle: AppString.onboardingSubTitile2),
    ),
    OnboardingPageWidget(
      model: OnboardingViewModel(
          onboardingImage: ImageAssets.onBoardingLogo3,
          headerText: AppString.onBoardingTitile3,
          subTitle: AppString.onboardingSubTitile3),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: _pages,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      controller: pageController,
      onPageChanged: (num) {
        setState(() {
          currentPage = num;
        });
      },
    ));
  }
}
