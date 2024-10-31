import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashbord_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ApabtiveLayout(
        mobileLayout: (BuildContext context) => const SizedBox(),
        tabletLayout: (BuildContext context) => const SizedBox(),
        desktopLayout: (BuildContext context) {
          return const DesktopDashboard();
        },
      ),
    );
  }
}
