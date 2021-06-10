import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/size_config.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  ResponsiveWidget({
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  });

  static bool isLargeScreen(BuildContext context) {
    return SizeConfig().width(context) > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return SizeConfig().width(context) >= 800 &&
        SizeConfig().width(context) <= 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return SizeConfig().width(context) < 00;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if(constrains.maxWidth > 1200){
        return largeScreen;
      }

      else if(constrains.maxWidth <= 1400 && constrains.maxWidth > 600){
        return mediumScreen;
      }
      else{
        return smallScreen;
      }
    });
  }
}
