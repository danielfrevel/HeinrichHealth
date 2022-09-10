import 'package:flutter/material.dart';

class HeinrichAppBar extends StatelessWidget {
  final String title;

  const HeinrichAppBar({Key? key, required this.title}) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(title: Text(title));
  }
}
