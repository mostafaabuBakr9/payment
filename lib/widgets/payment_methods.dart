import 'package:flutter/material.dart';
import 'package:payment/core/utils/assets.dart';
import 'package:payment/widgets/payment_method_item.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  List<String> paymentitem = [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];

  int? selectIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: paymentitem.asMap().entries.map((entry) {
          int index = entry.key;
          var item = entry.value;

          return GestureDetector(
            onTap: () {
              selectIndex = index;
              setState(() {});
            },
            child: paymentMethodItem(
              image: item,
              isSelected: selectIndex == index ? true : false,
            ),
          );
        }).toList(),
      ),
    );
  }
}
