import 'package:flutter/material.dart';

enum KipButtonTheme { ButtonGrey, ButtonGradient }

class KipElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? buttonStyle;

  const KipElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.buttonStyle,
    this.borderRadius,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: child,
      ),
    );
  }
}

class MineCategoryEmpty extends StatelessWidget {
  const MineCategoryEmpty(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.title,
      required this.buttonTheme,
      required this.buttonText,
      this.onPressed});

  final IconData icon;
  final double iconSize;
  final String title;
  final KipButtonTheme buttonTheme;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    ButtonStyle defaultValues = ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15));
    return Center(
      child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        Icon(
          icon,
          size: iconSize,
          color: Colors.grey[800],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
            width: 280,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, height: 1.3, fontWeight: FontWeight.w800),
            )),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          style: defaultValues,
          onPressed: onPressed,
          child: Text(buttonText),
        )
      ]),
    );
  }
}
