
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({
    super.key,
    required this.image,
  });

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: CarouselSlider(
        items: [
          ...List.generate(
            image.length,
            (index) => CachedNetworkImage(
              imageUrl: image[index],
              fit: BoxFit.cover,
            ),
          )
        ],
        options: CarouselOptions(
          height: 250,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration:
              const Duration(milliseconds: 800),
          autoPlayCurve: Curves.linear,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, reason) {},
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}


