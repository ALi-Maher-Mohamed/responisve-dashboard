import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApabtiveLayout extends StatelessWidget {
  const ApabtiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1300) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
