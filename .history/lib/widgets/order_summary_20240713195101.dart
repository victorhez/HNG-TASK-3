import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app/blocs/cart/cart_bloc.dart';

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
                  Divider(thickness: 2),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SUBTOTAL',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              'NGN${state.cart.subTotalString}',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DELIVERY FEE',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              'NGN${state.cart.deliveryFeeString}',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(50),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'TOTAL',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.white),
                              ),
                              Text(
                                'NGN${state.cart.totalString}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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

  textRow(String? title, String? description) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Color(0xff2A2A2A).withOpacity(0.8)),
        ),
        Text(
          'NGN${state.cart.subTotalString}',
          style:TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Color(0xff2A2A2A).withOpacity(0.8)),
        ),
      ],
    );
  }
}
