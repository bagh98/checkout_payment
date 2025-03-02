import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../core/utils/app_styles.dart';
import 'card_info_widget.dart';
import 'payment_item_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(children: [
          Text(
            'Thank You',
            textAlign: TextAlign.center,
            style: Styles.style25.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Your transaction was successful',
            style: Styles.style20,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 42,
          ),
          const PaymentItemInfo(
            title: 'Data',
            value: '01/23/2025',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentItemInfo(
            title: 'Time',
            value: '10:00 AM',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentItemInfo(
            title: 'To',
            value: 'Samuel Johnson',
          ),
          Divider(
            height: 60,
            color: Colors.grey.shade400,
            thickness: 2,
          ),
          TotalPrice(title: 'Total', value: '\$ 4.99'),
          const SizedBox(
            height: 20,
          ),
          CardInfoWidget(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 64,
              ),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style:
                        Styles.style24.copyWith(color: const Color(0xff34A853)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
          ),
        ]),
      ),
    );
  }
}
