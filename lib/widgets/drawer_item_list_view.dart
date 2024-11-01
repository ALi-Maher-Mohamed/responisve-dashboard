import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemlistView extends StatefulWidget {
  const DrawerItemlistView({
    super.key,
  });

  @override
  State<DrawerItemlistView> createState() => _DrawerItemlistViewState();
}

class _DrawerItemlistViewState extends State<DrawerItemlistView> {
  int selectedItem = 0;
  final List<DrawerItemModel> item = [
    const DrawerItemModel(
        text: 'Dashboard', image: AssetsImages.imagesDashboard),
    const DrawerItemModel(
        text: 'My Transaction', image: AssetsImages.imagesMyTransaction),
    const DrawerItemModel(
        text: 'Statistics', image: AssetsImages.imagesStatisticssvg),
    const DrawerItemModel(
        text: 'Wallet Account', image: AssetsImages.imagesWallet2),
    const DrawerItemModel(
        text: 'My investment', image: AssetsImages.imagesInvestment),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedItem != index) {
              setState(() {
                selectedItem = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItems(
              isActive: selectedItem == index,
              drawerItemModel: item[index],
            ),
          ),
        );
      },
    );
  }
}
