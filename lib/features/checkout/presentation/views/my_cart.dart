import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import 'widgets/my_cart_view_body.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }
}
