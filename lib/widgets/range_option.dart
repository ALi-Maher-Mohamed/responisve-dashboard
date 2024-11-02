import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xfff1f1f1),
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57070,
              child: const Icon(
                  color: Color(0xff064061), Icons.arrow_back_ios_new_outlined))
        ],
      ),
    );
  }
}
