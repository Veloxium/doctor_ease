import 'package:doctor_ease/color/ccolor.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      this.onPressed,
      this.background,
      this.fontsize = 16.0,
      this.textColor,
      this.borderColor,
      this.width = double.infinity,
      this.height = 60.0,
      this.iconImage});
  final String label;
  final VoidCallback? onPressed;
  final Color? background;
  final Color? textColor;
  final Color? borderColor;
  final String? iconImage;
  final double height;
  final double fontsize;

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: background ?? CColors.primary,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: borderColor ?? CColors.primary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: unnecessary_null_comparison
            iconImage != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      iconImage!,
                      width: 24.0,
                      height: 24.0,
                    ),
                  )
                : Container(),
            Text(
              label,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
