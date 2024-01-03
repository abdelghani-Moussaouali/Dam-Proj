import 'package:flutter/material.dart';
import '../Component/Navigator/BottomNavigationBar.dart';
import '../pages.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  HomePage({super.key});

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<Widget> valueWidget = ValueNotifier(VHomePage());
  final ValueNotifier<String> appTitle = ValueNotifier('Discover');
  /////
  final pageValue = ['Home', 'Search', 'favourite', 'me'];
  final pageWidget = [
    VHomePage(),
    const VSearch(),
    const VFavourite(),
    const VUser(),
  ];

  void _onItemNavigationSelected(index) {
    appTitle.value = pageValue[index];
    pageIndex.value = index;
    valueWidget.value = pageWidget[index];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationbar(
          selectedItem: _onItemNavigationSelected,
        ),
        body: ValueListenableBuilder(
          valueListenable: valueWidget,
          builder: (BuildContext context, dynamic value, Widget? child) {
            return Center(child: valueWidget.value);
          },
        ),
      ),
    );
  }
}
