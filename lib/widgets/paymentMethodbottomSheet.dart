import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_button.dart';
import 'package:payment/widgets/payment_methods.dart';

class Paymentmethodbottomsheet extends StatelessWidget {
  const Paymentmethodbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [PaymentMethods(), CustomButton(text: 'Continue')],
      ),
    );
  }
}
