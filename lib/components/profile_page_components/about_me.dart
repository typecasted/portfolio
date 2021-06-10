
import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/size_config.dart';

import '../components.dart';
import '../responsive_widget.dart';

class AboutMeLarge extends StatelessWidget {
  const AboutMeLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? EdgeInsets.symmetric(
          vertical: SizeConfig().height(context) * 0.06)
          : EdgeInsets.symmetric(
          vertical: SizeConfig().height(context) * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Me',
              style: ResponsiveWidget.isLargeScreen(context)
                  ? nameTagStyle.copyWith(
                  fontSize:
                  SizeConfig().height(context) * 0.07)
                  : nameTagStyle.copyWith(
                  fontSize:
                  SizeConfig().height(context) * 0.06)),

          Padding(
            padding: ResponsiveWidget.isLargeScreen(context)
                ? EdgeInsets.symmetric(
                vertical: SizeConfig().height(context) * 0.04)
                : EdgeInsets.symmetric(
                vertical: SizeConfig().height(context) * 0.05),
            child: Container(
              width: ResponsiveWidget.isLargeScreen(context) ? SizeConfig().width(context) * 0.5 : SizeConfig().width(context) * 0.8,
              child: Text(
                'Hello world, As I told you before myself Kunal Pithadiya and I am Flutter developer.\nI have been developing Flutter apps for almost two year now.\nI can make some elegant UIs along with the support of back-end.',
                style: ResponsiveWidget.isLargeScreen(context)
                    ? TextStyle(
                  fontSize: SizeConfig().height(context) * 0.03,
                )
                    : TextStyle(
                  fontSize: SizeConfig().height(context) * 0.025,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class AboutMeSmall extends StatelessWidget {
  const AboutMeSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('About Me',
            style: nameTagStyle.copyWith(
                fontSize:
                SizeConfig().height(context) * 0.06)),

        Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig().height(context) * 0.04),
          child: Container(
            width: SizeConfig().width(context) * 0.8,
            child: Text(
              'Hello world, As I told you before myself Kunal Pithadiya and I am Flutter developer.\nI have been developing Flutter apps for almost two year now.\nI can make some elegant UIs along with the support of back-end.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig().height(context) * 0.025,
              ),
            ),
          ),
        ),
      ],
    );
  }
}