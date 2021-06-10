import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/components.dart';
import 'package:portfolio/components/profile_page_components/about_me.dart';
import 'package:portfolio/components/profile_page_components/contact_bar.dart';
import 'package:portfolio/components/profile_page_components/header.dart';
import 'package:portfolio/components/profile_page_components/info_list.dart';
import 'package:portfolio/components/profile_page_components/profile_picture.dart';
import 'package:portfolio/components/profile_page_components/project_info_card.dart';
import 'package:portfolio/components/responsive_widget.dart';

import 'package:portfolio/utils/size_config.dart';

class LargeProfileScreen extends StatefulWidget {
  @override
  _LargeProfileScreenState createState() => _LargeProfileScreenState();
}

class _LargeProfileScreenState extends State<LargeProfileScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Scrollbar(
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig().width(context) * 0.05),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(
                      image: logoImage,
                      scrollController: _scrollController,
                    ),
                    Padding(
                      padding: ResponsiveWidget.isLargeScreen(context)
                          ? EdgeInsets.symmetric(
                              vertical: SizeConfig().height(context) * 0.08,
                            )
                          : EdgeInsets.symmetric(
                              vertical: SizeConfig().height(context) * 0.1,
                            ),
                      child: Row(
                        children: [
                          ProfilePicture(myImage: myImage),
                          InfoList(),
                        ],
                      ),
                    ),
                    Center(
                      child: Text('^',
                          style: ResponsiveWidget.isLargeScreen(context)
                              ? nameTagStyle.copyWith(
                                  fontSize: SizeConfig().height(context) * 0.07)
                              : nameTagStyle.copyWith(
                                  fontSize:
                                      SizeConfig().height(context) * 0.06)),
                    ),
                    AboutMeLarge(),
                    Padding(
                      padding: ResponsiveWidget.isLargeScreen(context)
                          ? EdgeInsets.only(
                              bottom: SizeConfig().height(context) * 0.03)
                          : EdgeInsets.only(
                              bottom: SizeConfig().height(context) * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Projects',
                            style: ResponsiveWidget.isLargeScreen(context)
                                ? nameTagStyle.copyWith(
                                    fontSize:
                                        SizeConfig().height(context) * 0.07)
                                : nameTagStyle.copyWith(
                                    fontSize:
                                        SizeConfig().height(context) * 0.06),
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ProjectInfoCardLarge(
                                  title: 'Side bar',
                                  description:
                                      'This is an experimental project. In this project, I have implemented some cool animations.',
                                  link:
                                      'https://github.com/typecasted/side_bar',
                                ),
                                ProjectInfoCardLarge(
                                    title: 'Collec',
                                    description:
                                        'This app is about uploading photos on cloud and retrieving photos from there. You can make different collections of the photos with app.',
                                    link:
                                        'https://github.com/typecasted/Collec'),
                                ProjectInfoCardLarge(
                                  title: 'Chat it',
                                  description:
                                      'As the name suggest, it is a chat app. Chat it is one of my personal projects. It\'s still in it\'s development stage.',
                                  link: 'https://github.com/typecasted/chat_it',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ContactBar(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
