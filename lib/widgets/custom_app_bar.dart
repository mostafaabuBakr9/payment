import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const Icon(Icons.arrow_back_outlined),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        text,
        style: Styles.style25,
      ),
    );
  }
}
