
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/onboarding/view/onboarding_page_widget.dart';

class OnboardingViewModel

{
final String onboardingImage;
final String headerText;
final String subTitle;

OnboardingViewModel({
  
  @required this.onboardingImage, 
  @required this.headerText, 
  @required this.subTitle,} );


}

class OnboardingBloc{

 int currentPage = 0;
 final _stateStreamController = StreamController<OnboardingPageWidget>();

 


}