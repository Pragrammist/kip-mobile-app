import 'package:flutter/material.dart';

class KipPageLayout extends StatelessWidget {
  KipPageLayout(
      {super.key,
      required this.title,
      required this.body,
      this.backgroundColor});

  final String title;
  final Widget body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            backgroundColor: Theme.of(context).accentColor,
          )),
      body: Container(
        color: backgroundColor == null
            ? Theme.of(context).accentColor
            : backgroundColor,
        child: body,
      ),
    );
  }
}
