import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../utils/styles.dart';
import 'components/mybuildanimatedtext.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 4,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/me.jpg', fit: BoxFit.cover),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              const AnimatedHeader(),
              if (Responsive.isMobileLarge(context))
                const SizedBox(height: defaultPadding / 2),
              const MyBuildAnimatedText(),
              const SizedBox(
                height: defaultPadding,
              ),
              if (!Responsive.isMobileLarge(context))
                ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    )),
              const SizedBox(
                height: defaultPadding,
              )
            ],
          )
        ],
      ),
    );
  }
}

class AnimatedHeader extends StatelessWidget {
  const AnimatedHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        textAlign: TextAlign.center,
        style: Responsive.isDesktop(context)
            ? Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white)
            : Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            WavyAnimatedText(
              'Hi dear, welcome',
            ),
            WavyAnimatedText(
              'Discover my Amazing Art Space',
            ),
          ],
          isRepeatingAnimation: true,
        ));
  }
}
