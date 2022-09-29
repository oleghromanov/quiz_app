import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/resources/app_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.text,
    this.onPressed,
    this.enabled = true,
    this.color,
    this.height = 50,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.onAccent,
    ),
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Color? color;
  final TextStyle textStyle;
  final double height;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          if (enabled) {
            onPressed?.call();
          }
        },
        child: SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color ?? (enabled ? AppColors.accent : AppColors.grey),
            ),
            width: double.maxFinite,
            child: text != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(child: Text(text!, style: textStyle)),
                    ],
                  )
                : const SizedBox(),
          ),
        ),
      );
}
