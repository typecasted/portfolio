import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/responsive_widget.dart';
import 'package:portfolio/utils/size_config.dart';

import '../components.dart';

class InfoList extends StatelessWidget {
  const InfoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Hi There!!! I am\n',
            style: ResponsiveWidget.isLargeScreen(context)
                ? headerTextStyle.copyWith(
                    fontSize: SizeConfig().height(context) * 0.05)
                : headerTextStyle.copyWith(
                    fontSize: SizeConfig().height(context) * 0.04)),
        Text('Kunal\nPithadiya\n',
            style: ResponsiveWidget.isLargeScreen(context)
                ? nameTagStyle.copyWith(
                    fontSize: SizeConfig().height(context) * 0.07)
                : nameTagStyle.copyWith(
                    fontSize: SizeConfig().height(context) * 0.06)),
        Container(
          width: SizeConfig().width(context) * 0.35,
          child: Text(
            'I am a Flutter developer.\nWith the use of Flutter SDK I can make beautiful apps which can run on different platforms.\n',
            style: ResponsiveWidget.isLargeScreen(context)
                ? TextStyle(
                    fontSize: SizeConfig().height(context) * 0.025,
                  )
                : TextStyle(
                    fontSize: SizeConfig().height(context) * 0.02,
                  ),
          ),
        ),
      ],
    );
  }
}

class InfoListSmall extends StatelessWidget {
  const InfoListSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Hi There!!! I am\n',
            style: headerTextStyle.copyWith(
                fontSize: SizeConfig().height(context) * 0.03),
          ),
        ),
        Text(
          'Kunal\nPithadiya\n',
          style: nameTagStyle.copyWith(
              fontSize: SizeConfig().height(context) * 0.06),
        ),
        Container(
          width: SizeConfig().width(context) * 0.8,
          child: Text(
            'I am a Flutter developer.\nWith the use of Flutter SDK I can make beautiful apps which can run on different platforms.\n',
            style: TextStyle(fontSize: SizeConfig().height(context) * 0.025, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
