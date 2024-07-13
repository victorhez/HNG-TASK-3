import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';

import '../blocs/cart/cart_bloc.dart';
import 'tabs_screen.dart';

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
    Future.delayed(Durations.long3,(() {
       context.read<CartBloc>().add(CartStarted());
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (ctx) => TabsScreen()),
                            (route) => false);
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      body: ,
    );
  }
}
