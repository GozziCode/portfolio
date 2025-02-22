import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    this.title,
    this.text,
  });
  final String? text, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
