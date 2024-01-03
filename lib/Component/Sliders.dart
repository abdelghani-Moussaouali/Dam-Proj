
import 'package:dam/Component/minSlider.dart';
import 'package:flutter/material.dart';

class Sliders extends StatelessWidget {
  const Sliders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       minSlider(
         ids: 0,
         color:  Colors.grey,
       ),
       minSlider(
         ids: 1,
         // color: Colors.grey.shade500,
         color:  Colors.grey,
       ),
       minSlider(
         ids: 2,
         color:  Colors.grey,
       ),
       minSlider(
         ids: 3,
         color:  Colors.grey,
       ),
     ],
  );
  }
}
