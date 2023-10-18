import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

final List<String> imgList = [
  "assets/seat1.png",
  "assets/seat2.png",
  "assets/seat3.png",
];

class _ImageCarouselState extends State<ImageCarousel> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(child: Image.asset(item.toString())),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.1,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              }
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url){
            int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: current == index ? Color.fromRGBO(255, 255, 255, 0.9) : Color.fromRGBO(255, 255, 255, 0.4)
              ),
            );
          }
        ).toList(),)
      ],
    );
  }
}