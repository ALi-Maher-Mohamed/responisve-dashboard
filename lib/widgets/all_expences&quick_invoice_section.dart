// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpencessAndQuickInvoceSection extends StatelessWidget {
  const AllExpencessAndQuickInvoceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpenses()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        )
      ],
    );
  }
}
