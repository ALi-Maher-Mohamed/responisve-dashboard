import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.coolr, required this.text, this.textColr});
  final String text;
  final Color? coolr;
  final Color? textColr;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: coolr ?? const Color(0xff4db7f2)),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: textColr ?? Colors.white),
        ),
      ),
    );
  }
}
