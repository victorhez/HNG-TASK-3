import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app/blocs/cart/cart_bloc.dart';

import 'dotted_lines.dart';
import 'product_card.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoaded) {
          return Container(
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffEDEDED).withOpacity(0.67)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shopping Summary",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2A2A2A),
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Discount Code",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2A2A2A).withOpacity(0.54),
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 247,
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(
                                  color: Color(0xff2A2A2A).withOpacity(0.7))),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                      Container(
                        height: 43,
                        width: 63,
                        decoration: BoxDecoration(
                          color: Color(0xffFF7F7D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Apply',
                          style:
                              TextStyle(color: Color(0xff2A2A2A), fontSize: 13),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  textRow("Sub-Total", double.parse(state.cart.subTotalString)),
                  textRow("Delivery Fee",
                      double.parse(state.cart.deliveryFeeString)),
                  textRow("Discount Amount", 0.0),
                  Container(
                    width: double.infinity,
                    height: 20,
                    child: CustomPaint(
                      painter: DottedLinePainter(
                          gap: 10, color: Color(0xff2A2A2A).withOpacity(0.5)),
                    ),
                  ),
                  Divider(thickness: 2),
                  textRow("Total Amount", double.parse(state.cart.totalString)),
                  Divider(thickness: 2),
                ],
              ),
            ),
          );
        } else {
          return Text('Something went wrong.');
        }
      },
    );
  }

  textRow(String? title, double? price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Color(0xff2A2A2A).withOpacity(0.8)),
            ),
            Text(
              'NGN${oCcy.format(price)}',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color(0xff2A2A2A).withOpacity(0.8)),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        )
      ],
    );
  }
}
