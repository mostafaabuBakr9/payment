import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/features/checkout/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:payment/features/data/repos/checkout_repo_implementation.dart';
import 'package:payment/widgets/custom_app_bar.dart';
import 'package:payment/widgets/my_card_view_body.dart';
import 'package:payment/widgets/payment_Method_bottom_Sheet.dart';

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
              return BlocProvider(
                create: (context) => StripePaymentCubit(CheckoutRepoImplementation()),
                child: const Paymentmethodbottomsheet(),
              );
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
