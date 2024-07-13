import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';

class SucessScreen extends StatefulWidget {
  const SucessScreen({super.key});
  static const String routeName = '/success';

  @override
  State<SucessScreen> createState() => _SucessScreenState();
}
class _SucessScreenState extends State<SucessScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Durations.medium4,(() {
      
    }))
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      body: ,
    );
  }
}
