import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/view/search/censor_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {required this.index,
      required this.filmObjects,
      required this.imageUrl,
      required this.title});

  final int index;
  final List<FilmShortModel> filmObjects;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CensorScreen(
                    filmObjects: filmObjects,
                  )));
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(index.toString())),
              SizedBox(
                width: 15,
              ),
              Row(children: [
                Image(
                  image: NetworkImage(imageUrl),
                  width: 60,
                  height: 60,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ])
            ]));
  }
}
