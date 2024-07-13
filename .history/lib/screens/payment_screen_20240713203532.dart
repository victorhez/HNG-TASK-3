import 'package:flutter/material.dart';



class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});
  static const String routeName = '/payment';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Text(,
            style: TextStyle(
                color: Color(0xff2A2A2A),
                fontSize: 19,
                height: 23.16,
                fontFamily: "montserrat",
                fontWeight: FontWeight.w700)),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
