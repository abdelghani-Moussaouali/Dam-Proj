import 'package:dam/colors.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.icon,
    required this.index,
    this.isSelected = false,
    required this.ontap,
  });

  final IconData icon;
  final int index;
  final bool isSelected;

  final ValueChanged<int> ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        ontap(index); 
      },
      child: SizedBox(
        width: 80,
        height: 27,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 25,
              color: isSelected ? AppColor : Colors.grey[500],
            ),
          ],
        ),
      ),
    );
  }
}
