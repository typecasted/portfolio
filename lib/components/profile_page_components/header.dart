import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_widget.dart';
import 'package:portfolio/utils/size_config.dart';
import '../components.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
    required AssetImage image,
    required this.scrollController,
  })   : _image = image,
        super(key: key);

  final AssetImage _image;
  final ScrollController scrollController;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.05),
      child: Container(
        width: double.infinity,
        height: SizeConfig().height(context) * 0.15,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().width(context) * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: SizeConfig().width(context) * 0.05 +
                  SizeConfig().height(context) * 0.04,
              height: SizeConfig().width(context) * 0.05 +
                  SizeConfig().height(context) * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: widget._image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    widget.scrollController.animateTo(
                        widget.scrollController.position.maxScrollExtent,
                        duration: Duration(milliseconds: 600),
                        curve: Curves.linear);
                  },
                  child: HeaderButton(
                    string: 'Projects',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.scrollController.animateTo(
                        widget.scrollController.position.maxScrollExtent,
                        duration: Duration(milliseconds: 600),
                        curve: Curves.linear);
                  },
                  child: HeaderButton(
                    string: 'Contact',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final String string;

  HeaderButton({required this.string});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? EdgeInsets.symmetric(
              horizontal: SizeConfig().width(context) * 0.005)
          : EdgeInsets.symmetric(
              horizontal: SizeConfig().width(context) * 0.009),
      child: ResponsiveWidget.isLargeScreen(context)
          ? Container(
              height: SizeConfig().height(context) * 0.06,
              width: SizeConfig().width(context) * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(05),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text(
                string,
                style: headerButtonTextStyle.copyWith(
                    fontSize: SizeConfig().width(context) * 0.0135),
              ),
            )
          : Container(
              height: SizeConfig().height(context) * 0.07,
              width: SizeConfig().width(context) * 0.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(05),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text(
                string,
                style: headerButtonTextStyle.copyWith(
                    fontSize: SizeConfig().width(context) * 0.02),
              ),
            ),
    );
  }
}

class HeaderSmall extends StatelessWidget {
  const HeaderSmall({
    Key? key,
    required AssetImage image,
    required this.scrollController,
  })   : _image = image,
        super(key: key);

  final AssetImage _image;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.04),
      child: Container(
          width: double.infinity,
          // height: SizeConfig().height(context) * 0.1,
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().width(context) * 0.05),
          child: Column(
            children: [
              Container(
                width: SizeConfig().width(context) * 0.3,
                height: SizeConfig().width(context) * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: _image,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig().height(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        scrollController.position.animateTo(SizeConfig().height(context) * 1.65,
                            duration: Duration(milliseconds: 900),
                            curve: Curves.linear);
                      },
                      child: HeaderButtonSmall(
                        string: 'Projects',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.linear);
                      },
                      child: HeaderButtonSmall(string: 'Contact'),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class HeaderButtonSmall extends StatelessWidget {
  final String string;

  HeaderButtonSmall({required this.string});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig().width(context) * 0.005),
      child: Container(
        height: SizeConfig().height(context) * 0.05,
        width: SizeConfig().width(context) * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(05),
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Text(
          string,
          style: headerButtonTextStyle.copyWith(
              fontSize: SizeConfig().width(context) * 0.04),
        ),
      ),
    );
  }
}
