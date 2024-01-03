import 'package:dam/Component/MyPage_View.dart';
import 'package:dam/Component/Page_View_Container.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static String id = 'FirstPage';
  final value = ValueNotifier(0);
  FirstPage({super.key});

  var photo = [
    {
      'image': 'images/alger.jpg',
      'desc': 'Explore \n Algeria \n with us',
      'title': 'Algeria'
    },
    {
      'image': 'images/ghardaia1.jpg',
      'desc': '',
      'title': 'Ghardaia',
    },
    {
      'image': 'images/oran.jpg',
      'desc': '',
      'title': 'Telemcen',
    },
    {
      'image': 'images/telemcen.jpg',
      'desc': '',
      'title': 'Oran',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CustomPageView(photo: photo),
        const PageViewContainer(),
      ]),
    );
  }
}
