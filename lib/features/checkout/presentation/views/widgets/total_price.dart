import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
        Spacer(),
        Text(
          textAlign: TextAlign.center,
          value,
          style: Styles.style24,
        ),
      ],
    );
  }
}
