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
        TextEditingController controller,String placeholder) {
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
                width: address ? 380 : 247,
                height: address ? 60 : 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border:
                        Border.all(color: Color(0xff2A2A2A).withOpacity(0.7))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: address ? "" : "  Phone nos 1"),
                )),
            SizedBox(
              height: address ? 14 : 24,
            ),
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
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: "   Phone nos 1"),
                  )),
            ),
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
          
          ],
        ),
      ),
    );
  }
}
