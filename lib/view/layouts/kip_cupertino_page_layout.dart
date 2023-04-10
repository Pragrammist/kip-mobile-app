import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/view/widget/category_item.dart';

class KipCupertinoPageLayout extends StatelessWidget {
  const KipCupertinoPageLayout(
      {super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: CupertinoSliverNavigationBar(
                backgroundColor: Theme.of(context).accentColor,
                largeTitle: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                )),
          )
        ];
      },
      body: Container(
          child: Material(
        color: Colors.black,
        child: body,
      )),
    ));
  }
}
