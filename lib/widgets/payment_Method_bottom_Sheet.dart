import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_button_bloc_consumer.dart';
import 'package:payment/widgets/payment_methods.dart';

class Paymentmethodbottomsheet extends StatelessWidget {
  const Paymentmethodbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PaymentMethods(),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}

