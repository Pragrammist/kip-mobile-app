import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  const Fact({super.key, required this.fact});

  final String fact;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text(
          fact,
          maxLines: 8,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
