import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBar({
  Key? key,
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 40,
          width: 99,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/logo.png"))),
        ),
        SizedBox(width: MediaQuery.of(context).size.width,)
        Text(title!,
            style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold)),
      ],
    ),
    iconTheme: IconThemeData(color: Colors.black),
  );
}

@override
Size get preferredSize => Size.fromHeight(50);
