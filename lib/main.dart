import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:takaful_design_ui/page/my_home_page.dart';
import 'package:takaful_design_ui/routes/router.gr.dart';
import 'package:takaful_design_ui/utils/colors.dart';

//Created by Said Al Fakhri

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: colorBackground),
      home: MyHomePage(),
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}
