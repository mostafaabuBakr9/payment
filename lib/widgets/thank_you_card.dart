import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/widgets/card_info_widget.dart';
import 'package:payment/widgets/payment_item_info.dart';
import 'package:payment/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
          color: const Color(0xFFEDEDED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 15, right: 15),
        child: Column(
          children: [
            Text(
              'Thank You',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your payment was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            SizedBox(
              height: 42,
            ),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(title: 'Time', value: '10:30 AM'),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(title: 'To', value: 'Mostafa AbuBakr'),
            Divider(
              height: 60,
              thickness: 2,
            ),
            TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(
              height: 30,
            ),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 70),
                Container(
                  width: 105,
                  height: 60,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.50, color: Color(0xFF34A853)),
                          borderRadius: BorderRadius.circular(15))),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.style24.copyWith(color: Color(0xFF34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
