import 'package:dam/Component/MyButton.dart';
import 'package:dam/Pages/HomePage.dart';
import 'package:dam/Pages/LoginPage.dart';

import 'package:dam/colors.dart';
import 'package:flutter/material.dart';

class PageViewContainer extends StatelessWidget {
  const PageViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              text: 'Let\'s Get Started',
              ontap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomePage.id, (route) => true);
              },
              color: Colors.black,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('aleredy have account? '),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                    context, LoginPage.id, (route) => true);
                  },
                  child: const Text(
                    'Login',
                    style:
                        TextStyle(color: AppColor, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
