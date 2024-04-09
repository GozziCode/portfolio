import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'animated_counter.dart';
import 'highlighted.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HighLight(
            widget: AnimatedCounter(
              text: 'K+',
              value: 10,
            ),
            label: 'Subscribers',
          ),
          HighLight(
            widget: AnimatedCounter(
              text: '+',
              value: 40,
            ),
            label: 'videos',
          ),
          HighLight(
            widget: AnimatedCounter(
              text: '+',
              value: 100,
            ),
            label: 'Github projecct',
          ),
          HighLight(
            widget: AnimatedCounter(
              text: 'K+',
              value: 30,
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}
