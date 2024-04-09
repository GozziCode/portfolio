import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/project_card.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../models/project.dart';
import '../../../utils/styles.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
            mobile: ProjectGridView(childAspectRaio: 1.7, crossAxiaCount: 1),
            mobileLarge: ProjectGridView(
              crossAxiaCount: 2,
            ),
            tablet: ProjectGridView(
              childAspectRaio: 1.1,
            ),
            desktop: ProjectGridView())
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxiaCount = 3,
    this.childAspectRaio = 1.3,
  });
  final int crossAxiaCount;
  final double childAspectRaio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoProject.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiaCount,
          childAspectRatio: childAspectRaio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (
        context,
        index,
      ) =>
          ProjectCard(
        project: demoProject[index],
      ),
    );
  }
}
