import 'package:flutter/material.dart';

import 'package:shop_app/models/timbu_product.dart';
import 'package:shop_app/screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Item product;
  final double widthFactor;
  final bool? isWishlist;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    final double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => ProductScreen(
        //       product: product,
        //     ),
        //   ),
        // );
      },
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              child: Image.network(
                "https://api.timbu.cloud/images/${product.photos[0].url}",
                fit: BoxFit.cover,
                width: widthValue + 30,
                height: height * 0.6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  product.description ?? "Testing",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Text(
                  'NGN${product.currentPrice[0].price["NGN"]![0]}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Stack(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(12),
      //           image: DecorationImage(
      //               fit: BoxFit.cover,
      //               image: NetworkImage(
      //                 "https://api.timbu.cloud/images/${product.photos[0].url}",
      //               ))),
      //       height: 200,
      //       width: widthValue,
      //     ),
      //     Positioned(
      //       top: 85,
      //       // left: 5,
      //       child: Container(
      //         height: 60,
      //         width: MediaQuery.of(context).size.width / 2.5,
      //         decoration: BoxDecoration(
      //             color: Colors.black, borderRadius: BorderRadius.circular(12)),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: [
      //               Expanded(
      //                 flex: 3,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       product.name,
      //                       style: Theme.of(context)
      //                           .textTheme
      //                           .headline5
      //                           ?.copyWith(color: Colors.white),
      //                     ),
      //                     Text(
      //                       'NGN${product.currentPrice[0].price["NGN"]![0]}',
      //                       style: Theme.of(context)
      //                           .textTheme
      //                           .headline6
      //                           ?.copyWith(color: Colors.white),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               BlocBuilder<CartBloc, CartState>(
      //                 builder: (context, state) {
      //                   if (state is CartLoading) {
      //                     return Center(
      //                         child: SizedBox(
      //                             height: 24,
      //                             width: 24,
      //                             child: CircularProgressIndicator()));
      //                   }
      //                   if (state is CartLoaded) {
      //                     return Expanded(
      //                       child: IconButton(
      //                         icon: Icon(Icons.add_circle, color: Colors.white),
      //                         onPressed: () {
      //                           context
      //                               .read<CartBloc>()
      //                               .add(CartProductAdded(product));
      //                           Fluttertoast.showToast(
      //                             msg: "Item added to cart.",
      //                             toastLength: Toast.LENGTH_SHORT,
      //                             gravity: ToastGravity.BOTTOM,
      //                             timeInSecForIosWeb: 1,
      //                             backgroundColor: Colors.grey,
      //                             textColor: Colors.black,
      //                             fontSize: 16.0,
      //                           );
      //                         },
      //                       ),
      //                     );
      //                   } else {
      //                     return Text('Something went wrong.');
      //                   }
      //                 },
      //               ),
      //               isWishlist!
      //                   ? Expanded(
      //                       child: BlocBuilder<WishlistBloc, WishlistState>(
      //                         builder: (context, state) {
      //                           return IconButton(
      //                             icon: Icon(
      //                               Icons.delete,
      //                               color: Colors.white,
      //                             ),
      //                             onPressed: () {
      //                               BlocProvider.of<WishlistBloc>(context).add(
      //                                 RemoveWishlistProduct(product),
      //                               );
      //                               Fluttertoast.showToast(
      //                                 msg: "Item deleted from wishlist.",
      //                                 toastLength: Toast.LENGTH_SHORT,
      //                                 gravity: ToastGravity.BOTTOM,
      //                                 timeInSecForIosWeb: 1,
      //                                 backgroundColor: Colors.grey,
      //                                 textColor: Colors.black,
      //                                 fontSize: 16.0,
      //                               );
      //                             },
      //                           );
      //                         },
      //                       ),
      //                     )
      //                   : SizedBox(),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
