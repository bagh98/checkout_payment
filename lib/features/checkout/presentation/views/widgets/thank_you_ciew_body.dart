import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';
import 'thabk_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2 + 20,
              right: 20 + 8,
              left: 20 + 8,
              child: const CustomDashedLine(),
            ),
            Positioned(
              left: -20,
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const Positioned(
              top: -50,
              right: 0,
              left: 0,
              child: CustomCheckIcon(),
            )
          ],
        ),
      ),
    );
  }
}
