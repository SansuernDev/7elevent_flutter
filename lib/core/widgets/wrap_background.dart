

import 'package:flutter/material.dart';

class WrapBackground extends StatelessWidget {
  final Widget child;
  const WrapBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// ✅ Background เต็มจอและ fixed
        Positioned.fill(
          child: Opacity(
            opacity: .34,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover, // ปรับให้เต็มจอ
            ),
          ),
        ),
        SizedBox.expand(
          child: child,
        )
      ],
    );
  }
}
