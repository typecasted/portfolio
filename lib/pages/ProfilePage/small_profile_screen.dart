import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/components.dart';
import 'package:portfolio/components/profile_page_components/about_me.dart';
import 'package:portfolio/components/profile_page_components/contact_bar.dart';
import 'package:portfolio/components/profile_page_components/header.dart';
import 'package:portfolio/components/profile_page_components/info_list.dart';
import 'package:portfolio/components/profile_page_components/profile_picture.dart';
import 'package:portfolio/components/profile_page_components/project_info_card.dart';
import 'package:portfolio/utils/size_config.dart';

class SmallProfileScreen extends StatefulWidget {
  @override
  _SmallProfileScreenState createState() => _SmallProfileScreenState();
}

class _SmallProfileScreenState extends State<SmallProfileScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderSmall(
                      image: logoImage,
                      scrollController: _scrollController,
                    ),
                    Column(

                      children: [
                        InfoListSmall(),
                        ProfilePictureSmall(myImage: myImage),
                        AboutMeSmall(),
                        Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig().height(context) * 0.04),
                          child: Text('Projects',
                              style: nameTagStyle.copyWith(
                                  fontSize:
                                  SizeConfig().height(context) * 0.06)),
                        ),
                        ProjectInfoCardSmall(
                            title: 'Side bar',
                            description:
                                'This is an experimental project. In this project, I have implemented some cool animations.',
                            link: 'https://github.com/typecasted/side_bar'),
                        ProjectInfoCardSmall(
                            title: 'Collec',
                            description:
                            'This app is about uploading photos on cloud and retrieving photos from there. You can make different collections of the photos with app.',
                            link:
                            'https://github.com/typecasted/Collec'),
                        ProjectInfoCardSmall(
                          title: 'Chat it',
                          description:
                          'As the name suggest, it is a chat app. Chat it is one of my personal projects. It\'s still in it\'s development stage.',
                          link: 'https://github.com/typecasted/chat_it',
                        ),
                        ContactBarSmall(),
                      ],
                    ),
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
