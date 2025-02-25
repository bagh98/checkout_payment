import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Spacer(),
        Text(
          value,
          style: Styles.style18,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
