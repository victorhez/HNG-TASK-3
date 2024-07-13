import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/models/timbu_product.dart';
import 'package:shop_app/widgets/product_card.dart';

class ProductCarousel extends StatefulWidget {
  final ProductResponse products;
  final List<String> keyword;

  const ProductCarousel({
    Key? key,
    required this.products,
    required this.keyword,
  }) : super(key: key);

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    widget.products.items.shuffle();
    return Align(
      alignment: Alignment.topLeft,
      child: 
      // SizedBox(
      //     height: MediaQuery.of(context).size.height * 0.4,
      //     child: CarouselSlider(
      //         items: widget.products.items
      //             .map((e) => ProductCard(product: e))
      //             .toList(),
      //         options: CarouselOptions(
      //           height: 400,
      //           enlargeCenterPage: true,
      //           enableInfiniteScroll: false,
      //           initialPage: 0,
      //           viewportFraction: 0.6,
      //           onPageChanged: (index, reason) {
      //             setState(() {
      //               _currentIndex = index;
      //             });
      //           },
      //         ))
          // ListView.builder(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          //   shrinkWrap: true,
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: const EdgeInsets.only(right: 5.0),
          //       child: ProductCard(
          //         product: products.items[index],
          //       ),
          //     );
          //   },
          //   itemCount: products.items.length,
          // ),
          ),
    );
  }
}
