import 'package:flutter/material.dart';
import 'package:kip_mobile/view/film/film.dart';

class CensorFilmItem extends StatelessWidget {
  const CensorFilmItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.genres,
      required this.id});

  final String id;
  final String imageUrl;
  final String title;
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FilmScreen(id: id))),
        child: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    width: 70,
                    height: 100,
                    fit: BoxFit.contain,
                    image: NetworkImage(imageUrl)),
                SizedBox(
                  width: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        "${genres.join(', ')}",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600),
                      ))
                ])
              ],
            )
          ]),
        ));
  }
}
