import 'package:flutter/material.dart';
import '../../style.dart';

class ItemLabel extends StatelessWidget {
  final String title;

  ItemLabel(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(this.title,
        style: TextStyle(fontSize: DefaultTextSize, height: 1.5));
  }
}
