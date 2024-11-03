import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitletextField(
                hint: 'Type Customer Name',
                title: 'Customer Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitletextField(
                hint: 'Type Customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitletextField(
                hint: 'Type Item Name',
                title: 'Item Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitletextField(
                hint: 'USD',
                title: 'Item Amount',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              textColr: Color(0xff4db7f2),
              coolr: Colors.white,
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
