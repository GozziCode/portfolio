import 'package:flutter/material.dart';
import 'package:portfolio/screens/mainscreen/mainscreen.dart';

import 'components/highlightedinfo.dart';
import 'components/my_projects.dart';
import 'components/recommendation.dart';
import 'home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      HighLightInfo(),
      MyProjects(),
      Recommendation(),
    ]);
  }
}

