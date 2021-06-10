// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio/components/components.dart';
// import 'package:portfolio/components/profile_page_components/header.dart';
// import 'package:portfolio/components/profile_page_components/info_list.dart';
// import 'package:portfolio/components/profile_page_components/profile_picture.dart';
// import 'package:portfolio/utils/size_config.dart';
//
// class MediumProfileScreen extends StatefulWidget {
//   const MediumProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   _MediumProfileScreenState createState() => _MediumProfileScreenState();
// }
//
// class _MediumProfileScreenState extends State<MediumProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Scrollbar(
//           child: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: SizeConfig().width(context) * 0.05),
//               child: Container(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Header(image: logoImage, scrollController: ,),
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: SizeConfig().height(context) * 0.1,),
//                       child: Row(
//                         children: [
//                           ProfilePicture(myImage: myImage),
//                           InfoList(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
