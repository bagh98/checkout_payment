import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/my_cart_view_body.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
            child: SvgPicture.asset(
          'assets/images/arrow.svg',
          height: 24,
        )),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          textAlign: TextAlign.center,
          'My Cart',
          style: Styles.style25,
        ),
      ),
      body: MyCartViewBody(),
    );
  }
}
