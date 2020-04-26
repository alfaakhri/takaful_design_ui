// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:takaful_design_ui/page/my_home_page.dart';
import 'package:takaful_design_ui/page/about_product_page.dart';

abstract class Routes {
  static const myHomePage = '/';
  static const aboutProductPage = '/about-product-page';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.myHomePage:
        if (hasInvalidArgs<MyHomePageArguments>(args)) {
          return misTypedArgsRoute<MyHomePageArguments>(args);
        }
        final typedArgs = args as MyHomePageArguments ?? MyHomePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              MyHomePage(key: typedArgs.key, title: typedArgs.title),
          settings: settings,
        );
      case Routes.aboutProductPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AboutProductPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//MyHomePage arguments holder class
class MyHomePageArguments {
  final Key key;
  final String title;
  MyHomePageArguments({this.key, this.title});
}
