import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/size_config.dart';
import 'dart:html' as html;
import '../components.dart';
import '../responsive_widget.dart';

class ContactBar extends StatelessWidget {
  const ContactBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? EdgeInsets.only(bottom: SizeConfig().height(context) * 0.065)
          : EdgeInsets.only(bottom: SizeConfig().height(context) * 0.05),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  html.window.open('https://github.com/typecasted', 'Github');
                },
                child: ResponsiveWidget.isLargeScreen(context)
                    ? Image(
                        image: gitIcon,
                        width: SizeConfig().width(context) * 0.03)
                    : Image(
                        image: gitIcon,
                        width: SizeConfig().width(context) * 0.04),
              ),
              SizedBox(
                width: SizeConfig().width(context) * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  html.window.open(
                      'https://www.linkedin.com/in/kunal-pithadiya-54b51120b',
                      'LinkedIn');
                },
                child: ResponsiveWidget.isLargeScreen(context)
                    ? Image(
                        image: linkedInIcon,
                        width: SizeConfig().width(context) * 0.03)
                    : Image(
                        image: linkedInIcon,
                        width: SizeConfig().width(context) * 0.04),
              ),
              SizedBox(
                width: SizeConfig().width(context) * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  html.window.open(
                      'https://www.fiverr.com/kunal_pithadiya?public_mode=true',
                      'Fiverr');
                },
                child: ResponsiveWidget.isLargeScreen(context)
                    ? Image(
                        image: fiverrIcon,
                        width: SizeConfig().width(context) * 0.03)
                    : Image(
                        image: fiverrIcon,
                        width: SizeConfig().width(context) * 0.04),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactBarSmall extends StatelessWidget {
  const ContactBarSmall({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              html.window.open('https://github.com/typecasted', 'Github');
            },
            child: Image(
                image: gitIcon, width: SizeConfig().height(context) * 0.06),
          ),
          SizedBox(
            width: SizeConfig().width(context) * 0.05,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://www.linkedin.com/in/kunal-pithadiya-54b51120b',
                  'LinkedIn');
            },
            child: Image(
                image: linkedInIcon,
                width: SizeConfig().height(context) * 0.06),
          ),
          SizedBox(
            width: SizeConfig().width(context) * 0.05,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://www.fiverr.com/kunal_pithadiya?public_mode=true',
                  'Fiverr');
            },
            child: Image(
                image: fiverrIcon, width: SizeConfig().height(context) * 0.06),
          ),
        ],
      ),
    );
  }
}
