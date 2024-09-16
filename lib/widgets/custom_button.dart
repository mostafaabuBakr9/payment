import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CustomButton extends StatelessWidget implements PreferredSizeWidget {
  const CustomButton(
      {super.key, this.onTap, required this.text, this.isLoading = false});
  final void Function()? onTap;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: ShapeDecoration(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Center(
            child: isLoading
                ? CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                    
                  )
                : Text(text, style: Styles.style22)),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
