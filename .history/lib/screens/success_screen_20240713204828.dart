import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';

class SucessScreen extends StatefulWidget {
  const SucessScreen({super.key});
  static const String routeName = '/success';

  @override
  State<SucessScreen> createState() => _SucessScreenState();
}
@override
void initState() {
  super.initState();
  
}
class _SucessScreenState extends State<SucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      body: ,
    );
  }
}
