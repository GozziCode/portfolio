import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: 0.8,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Python',
          percentage: 0.4,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'HMTL',
          percentage: 0.8,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'CSS',
          percentage: 0.5,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'JAVA',
          percentage: 0.2,
        ),
      ],
    );
  }
}
