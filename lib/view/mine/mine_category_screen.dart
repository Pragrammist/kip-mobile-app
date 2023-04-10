import 'package:flutter/material.dart';

class MineCategoryScreen extends StatelessWidget {
  MineCategoryScreen({required this.emptyWidget, required this.length});

  final Widget emptyWidget;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Will watch",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Theme.of(context).accentColor,
        toolbarHeight: 40,
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: length == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [emptyWidget],
              )
            : Column(children: [Text("Hello")]),
      ),
    );
  }
}
