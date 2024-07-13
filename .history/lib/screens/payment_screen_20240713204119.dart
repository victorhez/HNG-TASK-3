import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});
  static const String routeName = '/payment';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
   Padding _buildTextFormField(BuildContext context, String labelText,
      String placeholder) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: 12,
            ),
            Container(
                width:  380 ,
                height:  47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border:
                        Border.all(color: Color(0xff2A2A2A).withOpacity(0.7))),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    
                      border: InputBorder.none,
                      labelText: "   $placeholder"),
                )),
           
          ],
        ),
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text("Payment",
              style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontSize: 19,
                  height: 23.16,
                  fontWeight: FontWeight.w700))),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SvgPicture.asset("assets/svg/card.svg"),
          _buildTextFormField(context, "")
          ],
        ),
      ),
    );
  }
}
