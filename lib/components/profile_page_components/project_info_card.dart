import 'dart:ui';
import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/components.dart';
import 'package:portfolio/utils/size_config.dart';

import '../responsive_widget.dart';

class ProjectInfoCardLarge extends StatelessWidget {
  const ProjectInfoCardLarge({
    Key? key,
    required this.title,
    required this.description, required this.link,
  }) : super(key: key);

  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.06, horizontal: SizeConfig().width(context) * 0.02)
          : EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.06, horizontal: SizeConfig().width(context) * 0.03),
      child: Row(
        children: [
          Container(
            height: ResponsiveWidget.isLargeScreen(context)
                ? SizeConfig().height(context) * 0.4
                : SizeConfig().height(context) * 0.4,
            width: ResponsiveWidget.isLargeScreen(context)
                ? SizeConfig().width(context) * 0.25
                : SizeConfig().width(context) * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
              ],
            ),
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig().height(context) * 0.04,
                horizontal: SizeConfig().width(context) * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: headerTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig().height(context) * 0.045),
                    ),
                    GestureDetector(
                      onTap: (){
                        html.window.open(link, 'link');
                      },
                      child: Image(
                        image: gitIcon,
                        width: ResponsiveWidget.isLargeScreen(context) ? SizeConfig().width(context) * 0.0225 : SizeConfig().width(context) * 0.033,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig().height(context) * 0.02,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: SizeConfig().height(context) * 0.025,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ProjectInfoCardSmall extends StatelessWidget {
  const ProjectInfoCardSmall({
    Key? key,
    required this.title,
    required this.description, required this.link,
  }) : super(key: key);

  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.03, horizontal: SizeConfig().width(context) * 0.02),
      child: Column(
        children: [
          Container(
            height: SizeConfig().height(context) * 0.4,
            width: SizeConfig().width(context) * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
              ],
            ),
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig().height(context) * 0.04,
                horizontal: SizeConfig().width(context) * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: headerTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig().height(context) * 0.045),
                    ),
                    GestureDetector(
                      onTap: (){
                        html.window.open(link, 'link');
                      },
                      child: Image(
                        image: gitIcon,
                        width: SizeConfig().height(context) * 0.045,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig().height(context) * 0.02,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: SizeConfig().height(context) * 0.025,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}