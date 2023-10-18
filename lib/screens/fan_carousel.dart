import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

class FanCarousel extends StatefulWidget {
  const FanCarousel({super.key});

  @override
  State<FanCarousel> createState() => _FanCarouselState();
}

class _FanCarouselState extends State<FanCarousel> {
  static const List<String> sampleImages = [
    'https://underarmour.scene7.com/is/image/Underarmour/1376700-390_SLF_SL?rp=standard-0pad|pdpZoomDesktop&scl=0.85&fmt=jpg&qlt=85&resMode=sharp2&cache=on,on&bgc=f0f0f0&wid=1836&hei=1950&size=1500,1500',
    'https://underarmour.scene7.com/is/image/Underarmour/1376717-182_SLF_SL?rp=standard-0pad|pdpZoomDesktop&scl=0.85&fmt=jpg&qlt=85&resMode=sharp2&cache=on,on&bgc=f0f0f0&wid=1836&hei=1950&size=1500,1500',
    'https://underarmour.scene7.com/is/image/Underarmour/1361542-683_SLF_SL?rp=standard-0pad|pdpZoomDesktop&scl=0.85&fmt=jpg&qlt=85&resMode=sharp2&cache=on,on&bgc=f0f0f0&wid=1836&hei=1950&size=1500,1500',
    'https://underarmour.scene7.com/is/image/Underarmour/1376701-426_SLF_SL?rp=standard-0pad|pdpZoomDesktop&scl=0.85&fmt=jpg&qlt=85&resMode=sharp2&cache=on,on&bgc=f0f0f0&wid=1836&hei=1950&size=1500,1500',
    'https://underarmour.scene7.com/is/image/Underarmour/1376701-003_SLF_SL?rp=standard-0pad|pdpZoomDesktop&scl=0.85&fmt=jpg&qlt=85&resMode=sharp2&cache=on,on&bgc=f0f0f0&wid=1836&hei=1950&size=1500,1500',
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FanCarouselImageSlider(
          imagesLink: sampleImages,
          isAssets: false,
          imageRadius: 30,
        )
      ],
    );
  }
}