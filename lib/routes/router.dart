import 'package:auto_route/auto_route_annotations.dart';
import 'package:takaful_design_ui/page/about_product_page.dart';
import 'package:takaful_design_ui/page/my_home_page.dart';

//Created by Said Al Fakhri
//flutter pub run build_runner watch --delete-conflicting-outputs

@MaterialAutoRouter()
class $Router {
  @initial
  MyHomePage myHomePage;

  AboutProductPage aboutProductPage;
}