import 'package:dam/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ImagePicker extends StatelessWidget {
  ImagePicker({
    super.key,
  });

  final List places = [
    {
      'wilaya': 'Ghardaia',
      'name': 'Center Ville',
      'rating': 5,
      'placename': 'teghrdait',
      'image': 'images/ghardaia1.jpg'
    },
    {
      'wilaya': 'Constanine',
      'name': 'Cafe 1013',
      'rating': 4.6,
      'placename': 'El-khroub',
      'image': 'images/telemcen.jpg'
    },
    {
      'wilaya': 'Alger',
      'name': 'Matyrs National Museum',
      'rating': 4.8,
      'placename': 'Capital',
      'image': 'images/alger.jpg'
    },
    {
      'wilaya': 'Oran',
      'name': 'Santa Cruiz',
      'rating': 4.2,
      'placename': 'oran',
      'image': 'images/oran.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 250,
        child: ListView.builder(
            itemCount: places.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 25, bottom: 15, top: 13),
                height: 250,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 2)),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(places[index]['image']),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black,
                          ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: LikeButton(),
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                places[index]['name'],
                                style: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Text(
                                    ' ${places[index]['placename']}, ',
                                    style: const TextStyle(color: whiteColor),
                                  ),
                                  Text(
                                    places[index]['wilaya'],
                                    style: const TextStyle(color: whiteColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.star_fill,
                                      color: Colors.amber,
                                      size: 13,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '${places[index]['rating']}',
                                      style: const TextStyle(color: whiteColor),
                                    ),
                                  ],
                                ),
                              ])
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
