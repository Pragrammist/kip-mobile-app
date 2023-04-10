import 'package:flutter/material.dart';
import 'package:kip_mobile/view/film/film.dart';

class Film extends StatelessWidget {
  Film(
      {super.key,
      rating,
      required this.id,
      required this.title,
      required this.genres,
      required this.imageUrl});

  final String id;
  final double? rating = 0.0;
  final String title;
  final List<String> genres;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FilmScreen(
                  id: id,
                ))),
        child: SizedBox(
            width: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                    width: 90,
                    height: 140,
                    fit: BoxFit.contain,
                    image: NetworkImage(imageUrl)),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  genres[0],
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                )
              ],
            )));
  }
}
