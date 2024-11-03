import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transection_part.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_headers.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatextTransectionPart(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
