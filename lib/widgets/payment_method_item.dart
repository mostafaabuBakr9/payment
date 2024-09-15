import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class paymentMethodItem extends StatelessWidget {
  const paymentMethodItem(
      {super.key, this.isSelected = false, required this.image});
  final bool isSelected;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 65,
      width: 105,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.5,
                color: isSelected ? const Color(0xFF34A853) : Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
                color: isSelected ? const Color(0xFF34A853) : Colors.white,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0),
          ]),
      child: Center(child: SvgPicture.asset(image)),
    );
  }
}
