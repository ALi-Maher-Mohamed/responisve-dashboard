import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expencess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expencess_item.dart';

class AllExpencesItemListView extends StatefulWidget {
  const AllExpencesItemListView({super.key});

  @override
  State<AllExpencesItemListView> createState() =>
      _AllExpencesItemListViewState();
}

final items = [
  const AllExpencessItemModel(
      image: AssetsImages.imagesBalance,
      title: 'Balance',
      date: 'October 2024',
      price: r'$20.159'),
  const AllExpencessItemModel(
      image: AssetsImages.imagesIncome,
      title: 'Income',
      date: 'October 2024',
      price: r'$20.159'),
  const AllExpencessItemModel(
      image: AssetsImages.imagesExpensessvg,
      title: 'Expencess',
      date: 'October 2024',
      price: r'$20.159'),
];
int selectedIndex = 0;

class _AllExpencesItemListViewState extends State<AllExpencesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      var item = e.value;
      int index = e.key;

      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpencessItem(
                itemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(index),
            child: AllExpencessItem(
                isActive: selectedIndex == index, itemModel: item),
          ),
        );
      }
    }).toList());
  }

  updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
