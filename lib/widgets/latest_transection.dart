import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_listTile.dart';

class LatestTransection extends StatelessWidget {
  const LatestTransection({super.key});

  static const item = [
    UserInfoModel(
        image: AssetsImages.imagesAvatar1svg,
        title: 'Ali Maher',
        subTitle: 'alimaher@gmail.com'),
    UserInfoModel(
        image: AssetsImages.imagesAvatar2svg,
        title: 'Khaled Maher',
        subTitle: 'khaledmaher@gmail.com'),
    UserInfoModel(
        image: AssetsImages.imagesAvatar3svg,
        title: 'Ahmed Naser',
        subTitle: 'ahmedNaser@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    user: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
