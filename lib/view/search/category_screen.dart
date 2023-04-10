import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/view/widget/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({required this.title, required this.selection});

  final List<FilmSelectionModel> selection;
  final String title;

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
          color: Theme.of(context).accentColor,
          child: Material(
            color: Theme.of(context).accentColor,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CategoryItem(
                    filmObjects: selection[index].filmObjects,
                    index: index + 1,
                    title: selection[index].name,
                    imageUrl: selection[index].image,
                  )),
              itemCount: selection.length,
            ),
          )),
    ));
  }
}
