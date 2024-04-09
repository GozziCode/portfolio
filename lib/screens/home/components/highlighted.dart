import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    super.key,
    this.widget,
    this.label,
  });
  final Widget? widget;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget!,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}

