import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/models/timbu_product.dart';


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
      child: Column(
        children: [
          CarouselSlider(
            items: widget.products.items.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Pr
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 400,
              // enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 0,
              viewportFraction: 0.6,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.products.items.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
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
      //       ),
    );
  }
}
