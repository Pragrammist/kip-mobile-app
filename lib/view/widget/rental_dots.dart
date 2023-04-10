import 'package:flutter/material.dart';

class RentalDots extends StatelessWidget {
  const RentalDots(
      {super.key, required this.leadingText, required this.trailingText});

  final String leadingText;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(leadingText),
        Expanded(child: Text('.' * 100, maxLines: 1)),
        Text(trailingText),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
