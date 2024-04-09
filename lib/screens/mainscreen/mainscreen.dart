import 'package:flutter/material.dart';
import 'package:portfolio/screens/mainscreen/side_menu.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ScrollController mainController = ScrollController();
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu)))),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  controller: mainController,
                  child: Column(
                    children: [...children],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
