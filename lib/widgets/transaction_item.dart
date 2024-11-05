import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_modl.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionhistoryModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: Color(0xffaaaaaa)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xfff37f5e)
                : const Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}
