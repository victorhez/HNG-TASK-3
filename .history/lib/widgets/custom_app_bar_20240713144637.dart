import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBar({
  Key? key,
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Container(
        height: 40,
        width: 99,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.,
                image: AssetImage("assets/images/logo.png"))),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(title!,
        style: TextStyle(
            color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold)),
    iconTheme: IconThemeData(color: Colors.black),
  );
}

@override
Size get preferredSize => Size.fromHeight(50);
