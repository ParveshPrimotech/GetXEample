import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
      return AppBar(
          centerTitle : true,
          title: Text(
              title
          ),
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}