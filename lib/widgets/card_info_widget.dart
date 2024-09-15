import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/assets.dart';
import 'package:payment/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesMasterCard),
        title: Text('Creadit Card', style: Styles.style20),
        subtitle: Text('**** **** **** 1234', style: Styles.style20),
      ),
    );
  }
}
