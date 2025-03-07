import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            30,
            (index) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 2,
                    color: const Color(0xffB8B8B8),
                  ),
                )));
  }
}
