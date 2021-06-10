import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_widget.dart';
import 'package:portfolio/pages/ProfilePage/small_profile_screen.dart';

import 'large_profile_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);


  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: LargeProfileScreen(),
        mediumScreen: LargeProfileScreen(),
        smallScreen: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return LargeProfileScreen();
            }
            else {
              return SmallProfileScreen();
            }
          },
        ),
      ),
    );
  }
}
