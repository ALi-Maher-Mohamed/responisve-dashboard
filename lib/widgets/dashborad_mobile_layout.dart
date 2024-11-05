import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expences&quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_section.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpencessAndQuickInvoceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransectionSection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
