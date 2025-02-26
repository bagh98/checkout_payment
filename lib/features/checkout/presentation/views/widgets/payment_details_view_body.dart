import 'package:flutter/material.dart';

import 'payment_mothed_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymetMethodListView(),
      ],
    );
  }
}
