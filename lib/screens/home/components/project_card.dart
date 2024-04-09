import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../models/project.dart';
import '../../../utils/styles.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: seccondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Spacer(),
          Text(
           project.description!,
            overflow: TextOverflow.ellipsis,
            maxLines: Responsive.isMobileLarge(context)? 3: 4,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text('Read More>>',
                  style: TextStyle(color: primaryColor)))
        ],
      ),
    );
  }
}
