import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgraoondColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize, this.onpressed,
  });
  final double? fontsize;
  final Color backgraoondColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onpressed ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgraoondColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: onpressed ,
        child: Text(
          text,
          style:
              Styles.textStyle18.copyWith(color: textColor, fontSize: fontsize),
        ),
      ),
    );
  }
}
