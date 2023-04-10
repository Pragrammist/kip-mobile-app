import 'package:flutter/material.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/view/search/censor_screen.dart';

class Censor extends StatelessWidget {
  Censor(
      {super.key,
      required this.filmObjects,
      this.imageUrl = "",
      this.title = ""});

  final String imageUrl;
  final List<FilmShortModel> filmObjects;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CensorScreen(
                  filmObjects: filmObjects,
                ))),
        child: SizedBox(
            width: 125,
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(imageUrl),
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          height: 1.2),
                    ))
              ],
            )));
  }
}
