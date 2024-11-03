import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active&inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                UserInfoListTile(
                  user: UserInfoModel(
                      image: AssetsImages.imagesAvatar3svg,
                      title: 'Lekan Okeowo',
                      subTitle: 'demo@gmail.com'),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          DrawerItemlistView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    text: 'Setting system',
                    image: AssetsImages.imagesSetting2,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    text: 'Logout Account',
                    image: AssetsImages.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
