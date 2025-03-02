import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
          textAlign: TextAlign.center,
        ),
        Text(value,
            style: Styles.style18.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
      ],
    );
  }
}
