import 'package:flutter/material.dart';

class PersonArticle extends StatelessWidget {
  const PersonArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        color: Theme.of(context).backgroundColor,
        child: Column(children: <Widget>[
          Image(
            image: NetworkImage(
                "https://avatars.mds.yandex.net/get-kinopoisk-post-img/1101693/5a84386df17663240466ea59a39c3341/1920x1080"),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "«Стук в дверь»: типичная шьямалановская головоломка про апокалипсис в отдельно взятой семье",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("3 февраля 2023")
                  ]))
        ]));
  }
}
