import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment/widgets/custom_button.dart';
import 'package:payment/widgets/custom_credit_card.dart';
import 'package:payment/widgets/payment_methods.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethods()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomButton(
                    text: 'Payment',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const ThankYouView();
                          },
                        ));
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    }),
              )),
        )
      ],
    );
  }
}
