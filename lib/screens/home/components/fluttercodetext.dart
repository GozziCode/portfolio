import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: '<', children: [
      TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor)),
      TextSpan(
        text: '>',
      )
    ]));
  }
}
