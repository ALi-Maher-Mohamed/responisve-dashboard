import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
  });
  static const items = [
    ItemDetailModel(
        color: Color(0xff208bc7), text: 'Design service', value: '40%'),
    ItemDetailModel(
        color: Color(0xff4db7f2), text: 'Design Product', value: '25%'),
    ItemDetailModel(
        color: Color(0xff064060), text: 'Design royalti', value: '20%'),
    ItemDetailModel(color: Color(0xffe2decd), text: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(item: e)).toList(),
    );
  }
}
