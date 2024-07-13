import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

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
      appBar: APP(title: 'Payment'),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
