import 'package:dam/Pages/page_Widget/V_HomePage/IamgePicker.dart';
import 'package:dam/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VHomePage extends StatelessWidget {
  VHomePage({super.key});
  final List places = [
    {
      'wilaya': 'Ghardaia',
      'name': 'Center Ville',
      'rating': 5,
      'reviews': 474500,
      'placename': 'teghrdait',
      'image': 'images/ghardaia1.jpg'
    },
    {
      'wilaya': 'Constanine',
      'name': 'Cafe 1013',
      'rating': 4.6,
      'reviews': 25400,
      'placename': 'El-khroub',
      'image': 'images/telemcen.jpg'
    },
    {
      'wilaya': 'Alger',
      'name': 'Matyrs National Museum',
      'rating': 4.8,
      'reviews': 1605000,
      'placename': 'Capital',
      'image': 'images/alger.jpg'
    },
    {
      'wilaya': 'Oran',
      'name': 'Santa Cruiz',
      'rating': 4.2,
      'reviews': 310400,
      'placename': 'oran',
      'image': 'images/oran.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'images/map.png',
              height: 40,
              color: Colors.black,
            ),
            const Text(
              'Ghardaia',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
            )
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 124, 123, 123)),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(14.0)),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(3),
            child: Image.asset(
              'images/notification.png',
              height: 35,
              color: Colors.black,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 124, 123, 123)),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(14.0)),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'images/filter2.png',
              height: 25,
              color: Colors.black,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Text(
                'Popular places',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            SliverToBoxAdapter(
              child: ImagePicker(),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(bottom: 12),
                child: const Text('Recomendation for you',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: 3,
                    (context, index) => Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding:
                              const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(11)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage(places[index]['image'])),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 110,
                                width: 110,
                              ),
                              const SizedBox(
                                width: 9.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(places[index]['name']),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: BlackColor,
                                        size: 18,
                                      ),
                                      Text(
                                        ' ${places[index]['placename']}, ',
                                        style:
                                            const TextStyle(color: BlackColor),
                                      ),
                                      Text(
                                        places[index]['wilaya'],
                                        style:
                                            const TextStyle(color: BlackColor),
                                      ),
                                    ],
                                  ),
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
                                        style:
                                            const TextStyle(color: BlackColor),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        '(${places[index]['reviews']})',
                                        style:
                                            const TextStyle(color: Colors.grey,fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
