import 'package:flutter/material.dart';

import 'payment_method_item.dart';

class PaymetMethodListView extends StatefulWidget {
  const PaymetMethodListView({super.key});

  @override
  State<PaymetMethodListView> createState() => _PaymetMethodListViewState();
}

class _PaymetMethodListViewState extends State<PaymetMethodListView> {
  final List<String> paymentMethodsItem = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsItem.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () => setState(() => activeIndex = index),
            child: PaymetMethodItem(
              isActive: index == activeIndex,
              image: paymentMethodsItem[index],
            ),
          ),
        ),
      ),
    );
  }
}
