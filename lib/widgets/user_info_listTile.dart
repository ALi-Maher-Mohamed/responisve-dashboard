// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.user,
  });

  final UserInfoModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xfffafafa),
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(user.image),
            title: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                user.title,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
            subtitle: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                user.subTitle,
                style: AppStyles.styleRegular12(context),
              ),
            ),
          ),
        ));
  }
}
