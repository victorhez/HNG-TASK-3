import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';
import 'package:shop_app/widgets/order_summary.dart';

import '../blocs/cart/cart_bloc.dart';
import 'tabs_screen.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({super.key});

  static const String routeName = '/checkout';

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String? _selectedOption = 'Option 1';
  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController ziCodeController = TextEditingController();

    Padding _buildTextFormField(
      BuildContext context,
      String labelText,
      TextEditingController controller,
      bool address
    ) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: 75,
              child: Text(
                labelText,
                style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                          width:address? 380: 247,
                          height:address?60: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(
                                  color: Color(0xff2A2A2A).withOpacity(0.7))),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none, labelText: address?"":"Phone nos 1"),
                          )),
                          SizedBox(height: 24,),

  Visibility(
    visible: !address,
    child: Container(
                            width: 247,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(
                                    color: Color(0xff2A2A2A).withOpacity(0.7))),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none,labelText:  "Phone nos 1"),
                            )),
  ),

                          
          ],
        ),
      );
    }

    return
        // Scaffold(
        //   body: Center(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(
        //           Icons.shopping_cart_checkout,
        //           size: 150,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(20),
        //           child: Text(
        //             "Thanks for shopping, you order has been successfully marked paid, you will get it delivered to your house",
        //             textAlign: TextAlign.center,
        //             style: TextStyle(fontSize: 20),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 30,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: SizedBox(
        //             width: 300,
        //             height: 50,
        //             child: ElevatedButton(
        //               onPressed: () {
        //                 context.read<CartBloc>().add(CartStarted());
        //                 Navigator.pushAndRemoveUntil(
        //                     context,
        //                     MaterialPageRoute(builder: (ctx) => TabsScreen()),
        //                     (route) => false);
        //               },
        //               style: ElevatedButton.styleFrom(
        //                 backgroundColor: Colors.black,
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(5)),
        //                 elevation: 0,
        //               ),
        //               child: Align(
        //                 alignment: Alignment.center,
        //                 child: Text(
        //                   'Continue',
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // );

        Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: 'Checkout'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select how to receive your package(s)',
              style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Pickup',
              style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: Text('Old Secretariat Complex, Area 1, Garki Abaji Abji',
                  style: TextStyle(
                      color: Color(0xff2A2A2A).withOpacity(0.64),
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
              leading: Radio<String>(
                activeColor: Color(0xffFF7F7D),
                value: 'Option 1',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
            ),
            ListTile(
              title: Text('Sokoto Street, Area 1, Garki Area 1 AMAC',
                  style: TextStyle(
                      color: Color(0xff2A2A2A).withOpacity(0.64),
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
              leading: Radio<String>(
                value: 'Option 2',
                activeColor: Color(0xffFF7F7D),
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
            ),
            _buildTextFormField(context, 'Delivery', emailController),
            _buildTextFormField(context, 'Full Name', nameController),
            Text(
              'DELIVERY INFORMATION',
              style: Theme.of(context).textTheme.headline3,
            ),
            _buildTextFormField(context, 'Address', addressController),
            _buildTextFormField(context, 'City', cityController),
           
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
                elevation: 0,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'ORDER NOW',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
