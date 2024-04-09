import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../utils/styles.dart';
import 'animated_counter.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      widget: AnimatedCounter(
                        text: '+',
                        value: 0,
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
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      widget: AnimatedCounter(
                        text: '+',
                        value: 0,
                      ),
                      label: 'Github projecct',
                    ),
                    HighLight(
                      widget: AnimatedCounter(
                        text: 'K+',
                        value: 0,
                      ),
                      label: 'Stars',
                    ),
                  ],
                )
              ],
            )
          : const Row(
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
