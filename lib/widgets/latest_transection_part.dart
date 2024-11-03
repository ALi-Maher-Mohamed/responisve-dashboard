import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/latest_transection.dart';

class LatextTransectionPart extends StatelessWidget {
  const LatextTransectionPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransection()
      ],
    );
  }
}
