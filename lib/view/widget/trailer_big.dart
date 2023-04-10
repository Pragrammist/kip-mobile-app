import 'package:flutter/material.dart';

class TrailerBig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 220,
      child: Stack(children: [
        Image(
          image: NetworkImage(
            "https://avatars.mds.yandex.net/get-kinopoisk-post-img/1101693/4a4b86eca7682ddf0f2477a0ccd61413/960",
          ),
        ),
        Center(child: Icon(Icons.play_circle)),
        Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
                alignment: Alignment.bottomLeft,
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Джон Уик 4",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "боевик, триллер",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ]),
                  Spacer(),
                  Icon(Icons.chevron_right)
                ])))
      ]),
    ));
  }
}
