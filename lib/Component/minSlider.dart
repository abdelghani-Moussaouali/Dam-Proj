import 'package:flutter/material.dart';

class minSlider extends StatelessWidget {
  const minSlider({
    super.key,
    required this.ids,
    required this.color
  });
  final int ids;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      height: 3,
      width: 20,
    );
  }
}
