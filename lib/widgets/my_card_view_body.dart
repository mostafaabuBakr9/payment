import 'package:flutter/material.dart';
import 'package:payment/core/utils/assets.dart';
import 'package:payment/widgets/custom_button.dart';
import 'package:payment/widgets/order_info_item.dart';
import 'package:payment/widgets/total_price.dart';

class MyCardViewBody extends StatelessWidget {
  MyCardViewBody({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Image.asset(
              Assets.imagesBasketImage,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xFFC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: '50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: 'Complete Payment',
            onTap: onTap,
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
