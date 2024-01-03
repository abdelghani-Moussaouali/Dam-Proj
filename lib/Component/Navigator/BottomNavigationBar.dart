import 'package:dam/Component/Navigator/NavigationBarItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key, required this.selectedItem});

  final ValueChanged<int> selectedItem;

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  var selecteIndex = 0;
  void handelItemSelected(int index) {
    setState(
      () {
        selecteIndex = index;
      },
    );
    widget.selectedItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ]),
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.all(13),
      child: SafeArea(
   
        child: Row(
          verticalDirection: VerticalDirection.up,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(
              // label: 'Home',
              icon: CupertinoIcons.home,
              isSelected: (selecteIndex == 0),
              index: 0,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: CupertinoIcons.search,
              isSelected: (selecteIndex == 1),
              index: 1,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: (selecteIndex == 2)
                  ? CupertinoIcons.heart_fill
                  : CupertinoIcons.heart,
              isSelected: (selecteIndex == 2),
              index: 2,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              // label: 'me',
              icon: (selecteIndex == 3)
                  ? CupertinoIcons.person_fill
                  : CupertinoIcons.person,
              isSelected: (selecteIndex == 3),
              index: 3,
              ontap: (int index) => handelItemSelected(index),
            ),
          ],
        ),
      ),
    );
  }
}
