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

      return Expanded(
        child: GestureDetector(
          onTap: () => updateIndex(index),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpencessItem(
              itemModel: item,
              isActive: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList());
  }

  updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
