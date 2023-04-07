import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  final String appbarTitle;

  CustomAppBar({required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style: TextStyle(
          fontSize: 35,
          color: Colors.pink[100],
        ),
      ),
      centerTitle: true,
    );
  }
}
