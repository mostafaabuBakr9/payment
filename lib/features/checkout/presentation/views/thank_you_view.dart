import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_app_bar.dart';
import 'package:payment/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: CustomAppBar(text: '')),
      body: Transform.translate(
          offset: Offset(0, -20), child: ThankYouViewBody()),
    );
  }
}
