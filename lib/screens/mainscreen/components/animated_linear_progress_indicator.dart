import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    this.percentage,
    this.label,
  });
  final double? percentage;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  '${value * 100}%',
                )
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              backgroundColor: darkColor,
              color: primaryColor,
              value: value,
            ),
          ],
        ),
      ),
    );
  }
}
