import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/views/payment_view.dart';
import 'package:payment/widgets/custom_app_bar.dart';
import 'package:payment/widgets/my_card_view_body.dart';
import 'package:payment/widgets/paymentMethodbottomSheet.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(text: 'My Card')),
      body: MyCardViewBody(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Paymentmethodbottomsheet();
            },
          );
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const PaymentView();
          //     },
          //   ),
          // );
        },
      ),
    );
  }
}
