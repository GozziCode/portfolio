import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key,
    this.text,
    this.value,
  });
  final String? text;
  final int? value;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: defaultDuration,
        builder: (context, value, child) => Text(
              '$value$text',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: primaryColor),
            ));
  }
}
