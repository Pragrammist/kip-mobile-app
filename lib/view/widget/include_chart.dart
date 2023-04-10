import 'package:flutter/material.dart';

class IncludeChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image(
                  image: NetworkImage(
                      "https://avatars.mds.yandex.net/get-bunker/118781/02f27f401e650b75c4d42ed9f15e999392d33615/384x384"),
                  width: 60,
                  height: 60,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 230,
                          child: Text(
                            "500 лучших фильмов ужасов по мнению пользователей с платформы",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )),
                      //SizedBox(
                      //  height: 5,
                      //),
                      //Text("23 место из 31")
                    ])
              ])
            ]));
  }
}
