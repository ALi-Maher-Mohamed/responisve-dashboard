import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expences&quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 24),
            child: AllExpencessAndQuickInvoceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            MyCardAndTransectionSection(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection())
          ],
        )),
      ],
    );
  }
}
