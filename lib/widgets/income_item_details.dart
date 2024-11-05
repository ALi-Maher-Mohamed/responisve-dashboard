import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.item});
  final ItemDetailModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: item.color,
        ),
      ),
      title: Text(
        item.text,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        item.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
