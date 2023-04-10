import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/view/widget/censor_film_item.dart';

class CensorScreen extends StatelessWidget {
  const CensorScreen({super.key, required this.filmObjects});

  final List<FilmShortModel> filmObjects;

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
                      largeTitle: const Text(
                        "Popular films",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ];
            },
            body: Material(
                child: Container(
              color: Theme.of(context).accentColor,
              child: Column(children: [
                Text(
                  "Фильмы и сериалы: снятые специльано для нас проекты, западные хиты, анимация",
                  style: TextStyle(color: Colors.grey[500], fontSize: 15),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CensorFilmItem(
                        id: filmObjects[index].id,
                        imageUrl: filmObjects[index].banner,
                        title: filmObjects[index].name,
                        genres: filmObjects[index].genres,
                      )),
                  itemCount: filmObjects.length,
                ))
              ]),
            ))));
  }
}
