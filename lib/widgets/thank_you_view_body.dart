import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_check_icon.dart';
import 'package:payment/widgets/custom_dashed_line.dart';
import 'package:payment/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 36,
            right: 36,
            child: customDashedLine(),
          ),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}
