import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";

}

/*class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());

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
}*/
