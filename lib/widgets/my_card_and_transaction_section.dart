import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardAndTransectionSection extends StatelessWidget {
  const MyCardAndTransectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xfff1f1f1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
