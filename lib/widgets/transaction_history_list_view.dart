import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_modl.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionhistoryListView extends StatelessWidget {
  const TransactionhistoryListView({super.key});

  static const items = [
    TransactionhistoryModel(
        title: 'Cash Withdrawal',
        date: '12 nov 2024',
        amount: r'$20,54',
        isWithdrawal: true),
    TransactionhistoryModel(
        title: 'Leading page',
        date: '12 nov 2024',
        amount: r'$36,15',
        isWithdrawal: false),
    TransactionhistoryModel(
        title: 'Mobil app Project',
        date: '12 nov 2024',
        amount: r'$40,57',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
