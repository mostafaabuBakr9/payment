import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_app_bar.dart';
import 'package:payment/widgets/payment_details_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: CustomAppBar(text: 'Payment Details')),
        body: PaymentDetailsViewBody());
  }
}
