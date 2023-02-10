import 'package:flutter/material.dart';
import 'package:flutter_event_app/presentation/authentication/view/reset_password.dart';
import 'package:flutter_event_app/presentation/authentication/view/sign_in_view.dart';
import 'package:flutter_event_app/presentation/authentication/view/sign_up_view.dart';
import 'package:flutter_event_app/presentation/onboarding/view/onboardingView.dart';
import 'package:flutter_event_app/resources/string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/OnboardingView";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => SignUpView());
      /*case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());*/

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppString.noRouteFound),
              ),
              body: Center(child: Text(AppString.noRouteFound )),
            ));
  }
}
