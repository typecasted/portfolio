

import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/responsive_widget.dart';
import 'package:portfolio/utils/size_config.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required AssetImage myImage,
  })   : _myImage = myImage,
        super(key: key);

  final AssetImage _myImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context) ? EdgeInsets.symmetric(
          horizontal: SizeConfig().width(context) * 0.15) :EdgeInsets.symmetric(
          horizontal: SizeConfig().width(context) * 0.1),
      child: Container(
        width: ResponsiveWidget.isLargeScreen(context) ? SizeConfig().width(context) * 0.2 : SizeConfig().width(context) * 0.25,
        height: ResponsiveWidget.isLargeScreen(context) ? SizeConfig().height(context) * 0.4 : SizeConfig().height(context) * 0.3,
          decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: _myImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ProfilePictureSmall extends StatelessWidget {
  const ProfilePictureSmall({
    Key? key,
    required AssetImage myImage,
  })   : _myImage = myImage,
        super(key: key);

  final AssetImage _myImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig().height(context) * 0.05,
          horizontal: SizeConfig().width(context) * 0.1),
      child: Container(
        width: SizeConfig().width(context) * 0.8,
        height: SizeConfig().height(context) * 0.4,
        decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: _myImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}