import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/dashborad_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashbord_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: ApabtiveLayout(
        mobileLayout: (BuildContext context) => const DashbordMobileLayout(),
        tabletLayout: (BuildContext context) => const DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => const DesktopDashboard(),
      ),
    );
  }
}
