import 'package:dam/Component/Sliders.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.photo,
  });

  final List<Map<String, String>> photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      child: PageView.builder(
          padEnds: false,
          itemCount: photo.length,
          itemBuilder: (context, index) {
            return Container(
              // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(photo[index]['image']!),
                      fit: BoxFit.fill)),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 49),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ),
                            )),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            photo[index]['desc']!,
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 32),
                          ),
                        ),
                      ],
                    ),
                    Sliders(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
