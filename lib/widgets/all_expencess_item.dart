import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expencess_item_model.dart';
import 'package:responsive_dash_board/widgets/inActive&Active_all_expencess_item.dart';

class AllExpencessItem extends StatelessWidget {
  const AllExpencessItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExpencessItemModel itemModel;

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        secondChild: InActiveAllExpencessItem(itemModel: itemModel),
        firstChild: ActiveAllExpencessItem(itemModel: itemModel),
        crossFadeState:
            isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 200));
  }
}
